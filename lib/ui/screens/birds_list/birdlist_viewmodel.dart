import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class BirdlistViewmodel extends BaseViewModel {
  //detlnscrn
  onTap(Map<String, dynamic> birdDetails, String petId) {
    navigationService.navigateTo(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            petId: petId,
            name: birdDetails['name'],
            color: birdDetails['color'],
            owner: birdDetails['owner'],
            desc: birdDetails['desc'],
            sex: birdDetails['sex'],
            location: birdDetails['location'],
            url: birdDetails['url'],
            phone: birdDetails['phone'],
            price: birdDetails['price'],
            age: birdDetails['age']));
  }

  goBack() {
    navigationService.back();
  }
}
