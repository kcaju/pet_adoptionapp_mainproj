import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';

class CartViewmodel extends BaseViewModel {
  num totalAmount = 0;
  // num calculateTotalAmount(List<QueryDocumentSnapshot> documents) {
  //   totalAmount = 0;
  //   for (var document in documents) {
  //     Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
  //     if (data.isNotEmpty) {
  //       totalAmount += data['price'] * data['quantity'];
  //     }
  //   }
  //   notifyListeners();
  //   return totalAmount;
  // }
  Future<void> updateTotalAmount(List<QueryDocumentSnapshot> documents) async {
    totalAmount = 0;
    for (var document in documents) {
      Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
      if (data.isNotEmpty) {
        totalAmount += data['price'] * data['quantity'];
      }
    }
    // notifyListeners();
  }

  Future<void> incrementQuantity(String documentId, num currentQty) async {
    num newQty = currentQty + 1;
    await FirebaseFirestore.instance
        .collection("Suppliesorderdetails")
        .doc(documentId)
        .update({
      "quantity": newQty,
    });
    notifyListeners();
  }

  Future<void> decrementQuantity(String documentId, num currentQty) async {
    if (currentQty >= 2) {
      num newQty = currentQty - 1;
      await FirebaseFirestore.instance
          .collection("Suppliesorderdetails")
          .doc(documentId)
          .update({
        "quantity": newQty,
      });
      notifyListeners();
    }
  }

  Future<void> removeCartItem(String documentId) async {
    await FirebaseFirestore.instance
        .collection("Suppliesorderdetails")
        .doc(documentId)
        .delete();
  }

  late Razorpay _razorpay;
  // Callback function to handle payment success
  void _paymentSuccess(PaymentSuccessResponse response) {
    print("success $response");
  }

// Callback function to handle payment failure
  void _paymentFaliure(PaymentSuccessResponse response) {
    print("Faliure $response");
  }

// Callback function to handle external wallet payments
  void _paymentWallet(ExternalWalletResponse response) {}
  init() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _paymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _paymentFaliure);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _paymentWallet);
  }

  void disPose() {
    // Clear Razorpay resources
    _razorpay.clear();
  }

  // Function to start the checkout process with Razorpay
  void checkout(
    num amt,
  ) {
    var options = {
      //dynamic key of client please replace key with your key
      'key': 'rzp_live_ILgsfZCZoFIKMb',
      //amt in pisa to rupees
      'amount': amt * 100,
      // 'name': title,
      // 'description': description,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'external': {
        'wallets': ['paytm', 'gpay']
      }
    };
    try {
      _razorpay.open(options); //razorpay starts using open()fctn
    } catch (e) {}
  }

  goBck() {
    navigationService.back();
  }
}
