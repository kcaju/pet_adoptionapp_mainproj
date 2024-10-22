import 'package:petadpotion_app/ui/screens/birds_list/birdlist_view.dart';
import 'package:petadpotion_app/ui/screens/bottomnav/bottomnav_view.dart';
import 'package:petadpotion_app/ui/screens/cart_screen/cart_view.dart';
import 'package:petadpotion_app/ui/screens/cats_list/catlist_view.dart';
import 'package:petadpotion_app/ui/screens/confirm_adoption/confirmadoption_view.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_view.dart';
import 'package:petadpotion_app/ui/screens/get_start/getstart_view.dart';
import 'package:petadpotion_app/ui/screens/intermediate_screen/intermediate_view.dart';
import 'package:petadpotion_app/ui/screens/login/login_view.dart';
import 'package:petadpotion_app/ui/screens/on_boarding_screen/boardingscreen_view.dart';
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_view.dart';
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_view.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api_service.dart';

import '../ui/screens/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: GetstartView),
    MaterialRoute(page: IntermediateView),
    MaterialRoute(page: BoardingscreenView),
    MaterialRoute(page: BottomnavView),
    MaterialRoute(page: DoglistView),
    MaterialRoute(page: CatlistView),
    MaterialRoute(page: BirdlistView),
    MaterialRoute(page: RabbitlistView),
    MaterialRoute(page: PetdetailsView),
    MaterialRoute(page: PetsuppliesDetailsView),
    MaterialRoute(page: ConfirmadoptionView),
    MaterialRoute(page: CartView),
  ],
  dependencies: [
    LazySingleton(classType: ApiService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
  ],
)
class AppSetup {}
