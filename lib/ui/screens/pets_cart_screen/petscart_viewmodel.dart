import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetscartViewmodel extends BaseViewModel {
  toOrderedDetails(Map<String, dynamic> orderDetails, String currentId) {
    navigationService.navigateTo(Routes.orderdetailsView,
        arguments: OrderdetailsViewArguments(
            currentId: currentId,
            orderid: orderDetails['OrderId'],
            phone: orderDetails['phone'],
            name: orderDetails['name'],
            petname: orderDetails['petname'],
            address: orderDetails['address'],
            image: orderDetails['image'],
            status: orderDetails['status'],
            price: orderDetails['price']));
  }

  goBack() {
    navigationService.back();
  }
}
