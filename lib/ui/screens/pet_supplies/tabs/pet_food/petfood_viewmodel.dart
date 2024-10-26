import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class PetfoodViewmodel extends BaseViewModel {
  //detailsccrn
  onTap(String name, String url, String size, String desc, String benefits,
      num price, bool isAccessory) {
    navigationService.navigateTo(Routes.petsuppliesDetailsView,
        arguments: PetsuppliesDetailsViewArguments(
            name: name,
            desc: desc,
            size: size,
            url: url,
            benefits: benefits,
            price: price,
            isAccessory: isAccessory));
  }
}
