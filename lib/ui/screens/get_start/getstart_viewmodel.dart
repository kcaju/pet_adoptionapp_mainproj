import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class GetstartViewmodel extends BaseViewModel {
  void navigate() {
    navigationService.navigateTo(Routes.loginView);
  }
}
