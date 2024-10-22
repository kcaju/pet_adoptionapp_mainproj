import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:stacked/stacked.dart';

class RabbitViewmodel extends BaseViewModel {
  List<Map> rabbitBreed = [
    {
      "url":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBUylPpT9fXPAARrOl4y5ENQB7HgA5Ne3BmlTm0JqKp5xiCf4nXqEa9ag5TdcQOaCFm-c&usqp=CAU",
      "breed": "Holland Lop"
    },
    {
      "url":
          "https://img.freepik.com/premium-photo/sedate-easter-american-fuzzy-lop-rabbit-portrait-full-body-green-field_31965-79845.jpg",
      "breed": "American Fuzzy Lop"
    },
    {
      "url":
          "https://bunnystyleguide.com/wp-content/uploads/2022/02/angora-rabbit.jpg",
      "breed": "Angora rabbit"
    },
    {
      "url":
          "https://rabbitinsider.com/wp-content/uploads/2021/12/Palomino-Rabbit-Care.jpg",
      "breed": "Palomino rabbit"
    },
  ];
  void navigate() {
    navigationService.navigateTo(Routes.rabbitlistView);
  }
}
