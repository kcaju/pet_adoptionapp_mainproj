import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetsuppliesDetailsViewmodel extends BaseViewModel {
  bool isExpanded = false;
  //naviagtion
  goBack() {
    navigationService.back();
  }

  onExpansionChanged(bool value) {
    isExpanded = value;
    notifyListeners();
  }
}
