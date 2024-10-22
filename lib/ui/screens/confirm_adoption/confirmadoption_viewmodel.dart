import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:stacked/stacked.dart';

class ConfirmadoptionViewmodel extends BaseViewModel {
  TextEditingController address = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController orderingPersonName = TextEditingController();
  final formkey = GlobalKey<FormState>();

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
  void checkout(num amt, String phone) {
    var options = {
      //dynamic key of client please replace key with your key
      'key': 'rzp_live_ILgsfZCZoFIKMb',
      //amt in pisa to rupees
      'amount': amt * 100,
      // 'name': title,
      // 'description': description,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '$phone'},
      'external': {
        'wallets': ['paytm', 'gpay']
      }
    };
    try {
      _razorpay.open(options); //razorpay starts using open()fctn
    } catch (e) {}
  }

  goBack() {
    navigationService.back();
  }
}
