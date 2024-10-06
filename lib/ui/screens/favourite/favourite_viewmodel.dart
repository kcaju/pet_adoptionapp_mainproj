import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class FavouriteViewmodel extends BaseViewModel {
  //detlnscn
  onTap() {
    navigationService.navigateTo(Routes.petdetailsView);
  }
}
