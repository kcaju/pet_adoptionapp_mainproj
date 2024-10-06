import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class CatlistViewmodel extends BaseViewModel {
  //detailscrn
  onTap() {
    navigationService.navigateTo(Routes.petdetailsView);
  }

  goBack() {
    navigationService.back();
  }
}
