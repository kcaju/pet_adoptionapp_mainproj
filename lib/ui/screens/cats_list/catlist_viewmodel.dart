import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class CatlistViewmodel extends BaseViewModel {
  //detailscrn
  onTap(Map<String, dynamic> catDetails, String petId) {
    navigationService.navigateTo(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            petId: petId,
            name: catDetails['name'],
            color: catDetails['color'],
            owner: catDetails['owner'],
            desc: catDetails['desc'],
            sex: catDetails['sex'],
            location: catDetails['location'],
            url: catDetails['url'],
            price: catDetails['price'],
            age: catDetails['age']));
  }

  goBack() {
    navigationService.back();
  }
}
