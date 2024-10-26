import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class OrderdetailsViewmodel extends BaseViewModel {
  toGoback() {
    navigationService.back();
  }

  toPetscart() {
    navigationService.back();
  }
}
