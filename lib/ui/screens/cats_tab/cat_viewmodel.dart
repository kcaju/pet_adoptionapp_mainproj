import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class CatViewmodel extends BaseViewModel {
  void navigate() {
    navigationService.navigateTo(Routes.catlistView);
  }
}
