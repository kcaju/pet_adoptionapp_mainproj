import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class DogViewmodel extends BaseViewModel {
  // List<Map> dogBreed = [
  //   {
  //     "url":
  //         "https://qph.cf2.quoracdn.net/main-qimg-97023c5672777c4b3076e012526e4a0f-lq",
  //     "breed": "Golden Retriever"
  //   },
  //   {
  //     "url":
  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn4ir7qxd2_RlqMp6l12zjeLI_EE3sO1ulMZYDrHrlN-x2SbHu",
  //     "breed": "German Shepherd"
  //   },
  //   {
  //     "url":
  //         "https://image.petmd.com/files/styles/863x625/public/2023-11/siberian-husky-winter.jpg",
  //     "breed": "Siberian Husky"
  //   },
  //   {
  //     "url":
  //         "https://images.ctfassets.net/ub3bwfd53mwy/hnMEKnwoUviZ8O7uZYL5H/2727fb776a8ffcc9a0bfe1e7aa48ebdf/Beagle_dog_panting.png",
  //     "breed": "Beagle"
  //   },
  //   {
  //     "url":
  //         "https://puffandfluffspa.com/wp-content/uploads/2017/08/Depositphotos_1979239_m-2015-1000x675.jpg",
  //     "breed": "Rottweiler"
  //   },
  //   {
  //     "url":
  //         "https://cdn.britannica.com/69/235669-050-E70D097B/Saint-bernard-dog-st-bernard-head.jpg",
  //     "breed": "St. Bernard"
  //   },
  // ];
  void navigate(Map<String, dynamic> dogData, String id, String breed,
      String url, String category) {
    navigationService.navigateTo(Routes.doglistView,
        arguments: DoglistViewArguments(
            category: category,
            dogData: dogData,
            id: id,
            url: url,
            breed: breed));
  }
}
