// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/birds_list/birdlist_view.dart'
    as _i9;
import 'package:petadpotion_app/ui/screens/bottomnav/bottomnav_view.dart'
    as _i6;
import 'package:petadpotion_app/ui/screens/cats_list/catlist_view.dart' as _i8;
import 'package:petadpotion_app/ui/screens/confirm_adoption/confirmadoption_view.dart'
    as _i13;
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_view.dart' as _i7;
import 'package:petadpotion_app/ui/screens/get_start/getstart_view.dart' as _i3;
import 'package:petadpotion_app/ui/screens/login/login_view.dart' as _i4;
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_view.dart'
    as _i11;
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_view.dart'
    as _i12;
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_view.dart'
    as _i10;
import 'package:petadpotion_app/ui/screens/registration/registration_view.dart'
    as _i5;
import 'package:petadpotion_app/ui/screens/splash/splash_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i15;

class Routes {
  static const splashView = '/';

  static const getstartView = '/getstart-view';

  static const loginView = '/login-view';

  static const registrationView = '/registration-view';

  static const bottomnavView = '/bottomnav-view';

  static const doglistView = '/doglist-view';

  static const catlistView = '/catlist-view';

  static const birdlistView = '/birdlist-view';

  static const rabbitlistView = '/rabbitlist-view';

  static const petdetailsView = '/petdetails-view';

  static const petsuppliesDetailsView = '/petsupplies-details-view';

  static const confirmadoptionView = '/confirmadoption-view';

  static const all = <String>{
    splashView,
    getstartView,
    loginView,
    registrationView,
    bottomnavView,
    doglistView,
    catlistView,
    birdlistView,
    rabbitlistView,
    petdetailsView,
    petsuppliesDetailsView,
    confirmadoptionView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.getstartView,
      page: _i3.GetstartView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.registrationView,
      page: _i5.RegistrationView,
    ),
    _i1.RouteDef(
      Routes.bottomnavView,
      page: _i6.BottomnavView,
    ),
    _i1.RouteDef(
      Routes.doglistView,
      page: _i7.DoglistView,
    ),
    _i1.RouteDef(
      Routes.catlistView,
      page: _i8.CatlistView,
    ),
    _i1.RouteDef(
      Routes.birdlistView,
      page: _i9.BirdlistView,
    ),
    _i1.RouteDef(
      Routes.rabbitlistView,
      page: _i10.RabbitlistView,
    ),
    _i1.RouteDef(
      Routes.petdetailsView,
      page: _i11.PetdetailsView,
    ),
    _i1.RouteDef(
      Routes.petsuppliesDetailsView,
      page: _i12.PetsuppliesDetailsView,
    ),
    _i1.RouteDef(
      Routes.confirmadoptionView,
      page: _i13.ConfirmadoptionView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.GetstartView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.GetstartView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.RegistrationView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.RegistrationView(),
        settings: data,
      );
    },
    _i6.BottomnavView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.BottomnavView(),
        settings: data,
      );
    },
    _i7.DoglistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.DoglistView(),
        settings: data,
      );
    },
    _i8.CatlistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.CatlistView(),
        settings: data,
      );
    },
    _i9.BirdlistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.BirdlistView(),
        settings: data,
      );
    },
    _i10.RabbitlistView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.RabbitlistView(),
        settings: data,
      );
    },
    _i11.PetdetailsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.PetdetailsView(),
        settings: data,
      );
    },
    _i12.PetsuppliesDetailsView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.PetsuppliesDetailsView(),
        settings: data,
      );
    },
    _i13.ConfirmadoptionView: (data) {
      return _i14.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.ConfirmadoptionView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i15.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGetstartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.getstartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegistrationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registrationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBottomnavView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.bottomnavView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDoglistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.doglistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCatlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.catlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBirdlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.birdlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRabbitlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.rabbitlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetdetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.petdetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetsuppliesDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.petsuppliesDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConfirmadoptionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.confirmadoptionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGetstartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.getstartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegistrationView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registrationView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBottomnavView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.bottomnavView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDoglistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.doglistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCatlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.catlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBirdlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.birdlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRabbitlistView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.rabbitlistView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetdetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.petdetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetsuppliesDetailsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.petsuppliesDetailsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConfirmadoptionView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.confirmadoptionView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
