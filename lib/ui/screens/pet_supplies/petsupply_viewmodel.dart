import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetsupplyViewmodel extends BaseViewModel {
  tocart() {
    navigationService.navigateTo(Routes.cartView);
  }
}
