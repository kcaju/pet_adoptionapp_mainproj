import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class BirdlistViewmodel extends BaseViewModel {
  //detlnscrn
  onTap() {
    navigationService.navigateTo(Routes.petdetailsView);
  }

  goBack() {
    navigationService.back();
  }
}
