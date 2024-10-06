import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetfoodViewmodel extends BaseViewModel {
  //detailsccrn
  onTap() {
    navigationService.navigateTo(Routes.petsuppliesDetailsView);
  }
}
