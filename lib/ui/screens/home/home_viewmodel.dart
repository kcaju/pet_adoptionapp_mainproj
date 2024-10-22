import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  toDetails(Map<String, dynamic> petDetails, String petId) {
    navigationService.navigateTo(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            petId: petId,
            name: petDetails['name'],
            color: petDetails['color'],
            owner: petDetails['owner'],
            desc: petDetails['desc'],
            sex: petDetails['sex'],
            location: petDetails['location'],
            url: petDetails['url'],
            price: petDetails['price'],
            age: petDetails['age']));
  }
}
