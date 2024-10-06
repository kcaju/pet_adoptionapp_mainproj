import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetdetailsViewmodel extends BaseViewModel {
  navigate() {
    navigationService.navigateTo(Routes.confirmadoptionView);
  }
}
