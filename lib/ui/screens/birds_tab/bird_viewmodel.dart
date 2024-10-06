import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class BirdViewmodel extends BaseViewModel {
  void navigate() {
    navigationService.navigateTo(Routes.birdlistView);
  }
}
