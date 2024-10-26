import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class FavouriteViewmodel extends BaseViewModel {
  //detlnscn
  onTap(Map<String, dynamic> petDetails, String petId) {
    navigationService.navigateTo(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            petId: petDetails['petId'],
            name: petDetails['petname'],
            color: petDetails['color'],
            owner: petDetails['owner'],
            desc: petDetails['desc'],
            phone: petDetails['phone'],
            sex: petDetails['sex'],
            location: petDetails['location'],
            url: petDetails['image'],
            price: petDetails['price'],
            age: petDetails['age']));
  }
}
