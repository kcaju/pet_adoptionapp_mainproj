import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class DoglistViewmodel extends BaseViewModel {
  //detailsscreen navigtn
  onTap() {
    navigationService.navigateTo(Routes.petdetailsView);
  }

  goBack() {
    navigationService.back();
  }
}
