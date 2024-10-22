import 'package:stacked/stacked.dart';

class CarttabViewmodel extends BaseViewModel {
  int qty = 1;
  toIncrement() {
    ++qty;
    notifyListeners();
  }

  toDecrement() {
    if (qty >= 2) {
      --qty;
      notifyListeners();
    }
  }
}
