// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i17;
import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/birds_list/birdlist_view.dart'
    as _i9;
import 'package:petadpotion_app/ui/screens/bottomnav/bottomnav_view.dart'
    as _i6;
import 'package:petadpotion_app/ui/screens/cart_screen/cart_view.dart' as _i14;
import 'package:petadpotion_app/ui/screens/cats_list/catlist_view.dart' as _i8;
import 'package:petadpotion_app/ui/screens/confirm_adoption/confirmadoption_view.dart'
    as _i13;
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_view.dart' as _i7;
import 'package:petadpotion_app/ui/screens/get_start/getstart_view.dart' as _i3;
import 'package:petadpotion_app/ui/screens/intermediate_screen/intermediate_view.dart'
    as _i4;
import 'package:petadpotion_app/ui/screens/on_boarding_screen/boardingscreen_view.dart'
    as _i5;
import 'package:petadpotion_app/ui/screens/order_details/orderdetails_view.dart'
    as _i16;
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_view.dart'
    as _i11;
import 'package:petadpotion_app/ui/screens/pets_cart_screen/petscart_view.dart'
    as _i15;
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_view.dart'
    as _i12;
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_view.dart'
    as _i10;
import 'package:petadpotion_app/ui/screens/splash/splash_view.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i18;

class Routes {
  static const splashView = '/';

  static const getstartView = '/getstart-view';

  static const intermediateView = '/intermediate-view';

  static const boardingscreenView = '/boardingscreen-view';

  static const bottomnavView = '/bottomnav-view';

  static const doglistView = '/doglist-view';

  static const catlistView = '/catlist-view';

  static const birdlistView = '/birdlist-view';

  static const rabbitlistView = '/rabbitlist-view';

  static const petdetailsView = '/petdetails-view';

  static const petsuppliesDetailsView = '/petsupplies-details-view';

  static const confirmadoptionView = '/confirmadoption-view';

  static const cartView = '/cart-view';

  static const petscartView = '/petscart-view';

  static const orderdetailsView = '/orderdetails-view';

  static const all = <String>{
    splashView,
    getstartView,
    intermediateView,
    boardingscreenView,
    bottomnavView,
    doglistView,
    catlistView,
    birdlistView,
    rabbitlistView,
    petdetailsView,
    petsuppliesDetailsView,
    confirmadoptionView,
    cartView,
    petscartView,
    orderdetailsView,
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
      Routes.intermediateView,
      page: _i4.IntermediateView,
    ),
    _i1.RouteDef(
      Routes.boardingscreenView,
      page: _i5.BoardingscreenView,
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
    _i1.RouteDef(
      Routes.cartView,
      page: _i14.CartView,
    ),
    _i1.RouteDef(
      Routes.petscartView,
      page: _i15.PetscartView,
    ),
    _i1.RouteDef(
      Routes.orderdetailsView,
      page: _i16.OrderdetailsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.GetstartView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.GetstartView(),
        settings: data,
      );
    },
    _i4.IntermediateView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.IntermediateView(),
        settings: data,
      );
    },
    _i5.BoardingscreenView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.BoardingscreenView(),
        settings: data,
      );
    },
    _i6.BottomnavView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.BottomnavView(),
        settings: data,
      );
    },
    _i7.DoglistView: (data) {
      final args = data.getArgs<DoglistViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.DoglistView(
            key: args.key,
            dogData: args.dogData,
            id: args.id,
            url: args.url,
            breed: args.breed,
            category: args.category),
        settings: data,
      );
    },
    _i8.CatlistView: (data) {
      final args = data.getArgs<CatlistViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.CatlistView(
            key: args.key,
            catData: args.catData,
            id: args.id,
            url: args.url,
            breed: args.breed,
            category: args.category),
        settings: data,
      );
    },
    _i9.BirdlistView: (data) {
      final args = data.getArgs<BirdlistViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.BirdlistView(
            key: args.key,
            birdData: args.birdData,
            id: args.id,
            url: args.url,
            breed: args.breed,
            category: args.category),
        settings: data,
      );
    },
    _i10.RabbitlistView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.RabbitlistView(),
        settings: data,
      );
    },
    _i11.PetdetailsView: (data) {
      final args = data.getArgs<PetdetailsViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.PetdetailsView(
            key: args.key,
            name: args.name,
            color: args.color,
            owner: args.owner,
            desc: args.desc,
            sex: args.sex,
            location: args.location,
            url: args.url,
            price: args.price,
            age: args.age,
            petId: args.petId,
            phone: args.phone),
        settings: data,
      );
    },
    _i12.PetsuppliesDetailsView: (data) {
      final args = data.getArgs<PetsuppliesDetailsViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.PetsuppliesDetailsView(
            key: args.key,
            name: args.name,
            desc: args.desc,
            size: args.size,
            url: args.url,
            benefits: args.benefits,
            price: args.price,
            isAccessory: args.isAccessory),
        settings: data,
      );
    },
    _i13.ConfirmadoptionView: (data) {
      final args = data.getArgs<ConfirmadoptionViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.ConfirmadoptionView(
            key: args.key, name: args.name, price: args.price, url: args.url),
        settings: data,
      );
    },
    _i14.CartView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.CartView(),
        settings: data,
      );
    },
    _i15.PetscartView: (data) {
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => const _i15.PetscartView(),
        settings: data,
      );
    },
    _i16.OrderdetailsView: (data) {
      final args = data.getArgs<OrderdetailsViewArguments>(nullOk: false);
      return _i17.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.OrderdetailsView(
            key: args.key,
            orderid: args.orderid,
            phone: args.phone,
            name: args.name,
            petname: args.petname,
            address: args.address,
            image: args.image,
            status: args.status,
            price: args.price,
            currentId: args.currentId),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DoglistViewArguments {
  const DoglistViewArguments({
    this.key,
    required this.dogData,
    required this.id,
    required this.url,
    required this.breed,
    required this.category,
  });

  final _i17.Key? key;

  final Map<String, dynamic> dogData;

  final String id;

  final String url;

  final String breed;

  final String category;

  @override
  String toString() {
    return '{"key": "$key", "dogData": "$dogData", "id": "$id", "url": "$url", "breed": "$breed", "category": "$category"}';
  }

  @override
  bool operator ==(covariant DoglistViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.dogData == dogData &&
        other.id == id &&
        other.url == url &&
        other.breed == breed &&
        other.category == category;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        dogData.hashCode ^
        id.hashCode ^
        url.hashCode ^
        breed.hashCode ^
        category.hashCode;
  }
}

class CatlistViewArguments {
  const CatlistViewArguments({
    this.key,
    required this.catData,
    required this.id,
    required this.url,
    required this.breed,
    required this.category,
  });

  final _i17.Key? key;

  final Map<String, dynamic> catData;

  final String id;

  final String url;

  final String breed;

  final String category;

  @override
  String toString() {
    return '{"key": "$key", "catData": "$catData", "id": "$id", "url": "$url", "breed": "$breed", "category": "$category"}';
  }

  @override
  bool operator ==(covariant CatlistViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.catData == catData &&
        other.id == id &&
        other.url == url &&
        other.breed == breed &&
        other.category == category;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        catData.hashCode ^
        id.hashCode ^
        url.hashCode ^
        breed.hashCode ^
        category.hashCode;
  }
}

class BirdlistViewArguments {
  const BirdlistViewArguments({
    this.key,
    required this.birdData,
    required this.id,
    required this.url,
    required this.breed,
    required this.category,
  });

  final _i17.Key? key;

  final Map<String, dynamic> birdData;

  final String id;

  final String url;

  final String breed;

  final String category;

  @override
  String toString() {
    return '{"key": "$key", "birdData": "$birdData", "id": "$id", "url": "$url", "breed": "$breed", "category": "$category"}';
  }

  @override
  bool operator ==(covariant BirdlistViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.birdData == birdData &&
        other.id == id &&
        other.url == url &&
        other.breed == breed &&
        other.category == category;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        birdData.hashCode ^
        id.hashCode ^
        url.hashCode ^
        breed.hashCode ^
        category.hashCode;
  }
}

class PetdetailsViewArguments {
  const PetdetailsViewArguments({
    this.key,
    required this.name,
    required this.color,
    required this.owner,
    required this.desc,
    required this.sex,
    required this.location,
    required this.url,
    required this.price,
    required this.age,
    required this.petId,
    required this.phone,
  });

  final _i17.Key? key;

  final String name;

  final String color;

  final String owner;

  final String desc;

  final String sex;

  final String location;

  final String url;

  final num price;

  final num age;

  final String petId;

  final String phone;

  @override
  String toString() {
    return '{"key": "$key", "name": "$name", "color": "$color", "owner": "$owner", "desc": "$desc", "sex": "$sex", "location": "$location", "url": "$url", "price": "$price", "age": "$age", "petId": "$petId", "phone": "$phone"}';
  }

  @override
  bool operator ==(covariant PetdetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.name == name &&
        other.color == color &&
        other.owner == owner &&
        other.desc == desc &&
        other.sex == sex &&
        other.location == location &&
        other.url == url &&
        other.price == price &&
        other.age == age &&
        other.petId == petId &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        name.hashCode ^
        color.hashCode ^
        owner.hashCode ^
        desc.hashCode ^
        sex.hashCode ^
        location.hashCode ^
        url.hashCode ^
        price.hashCode ^
        age.hashCode ^
        petId.hashCode ^
        phone.hashCode;
  }
}

class PetsuppliesDetailsViewArguments {
  const PetsuppliesDetailsViewArguments({
    this.key,
    required this.name,
    required this.desc,
    required this.size,
    required this.url,
    required this.benefits,
    required this.price,
    this.isAccessory = false,
  });

  final _i17.Key? key;

  final String name;

  final String desc;

  final String size;

  final String url;

  final String benefits;

  final num price;

  final bool isAccessory;

  @override
  String toString() {
    return '{"key": "$key", "name": "$name", "desc": "$desc", "size": "$size", "url": "$url", "benefits": "$benefits", "price": "$price", "isAccessory": "$isAccessory"}';
  }

  @override
  bool operator ==(covariant PetsuppliesDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.name == name &&
        other.desc == desc &&
        other.size == size &&
        other.url == url &&
        other.benefits == benefits &&
        other.price == price &&
        other.isAccessory == isAccessory;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        size.hashCode ^
        url.hashCode ^
        benefits.hashCode ^
        price.hashCode ^
        isAccessory.hashCode;
  }
}

class ConfirmadoptionViewArguments {
  const ConfirmadoptionViewArguments({
    this.key,
    required this.name,
    required this.price,
    required this.url,
  });

  final _i17.Key? key;

  final String name;

  final num price;

  final String url;

  @override
  String toString() {
    return '{"key": "$key", "name": "$name", "price": "$price", "url": "$url"}';
  }

  @override
  bool operator ==(covariant ConfirmadoptionViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.name == name &&
        other.price == price &&
        other.url == url;
  }

  @override
  int get hashCode {
    return key.hashCode ^ name.hashCode ^ price.hashCode ^ url.hashCode;
  }
}

class OrderdetailsViewArguments {
  const OrderdetailsViewArguments({
    this.key,
    required this.orderid,
    required this.phone,
    required this.name,
    required this.petname,
    required this.address,
    required this.image,
    required this.status,
    required this.price,
    required this.currentId,
  });

  final _i17.Key? key;

  final String orderid;

  final String phone;

  final String name;

  final String petname;

  final String address;

  final String image;

  final String status;

  final num price;

  final String currentId;

  @override
  String toString() {
    return '{"key": "$key", "orderid": "$orderid", "phone": "$phone", "name": "$name", "petname": "$petname", "address": "$address", "image": "$image", "status": "$status", "price": "$price", "currentId": "$currentId"}';
  }

  @override
  bool operator ==(covariant OrderdetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.orderid == orderid &&
        other.phone == phone &&
        other.name == name &&
        other.petname == petname &&
        other.address == address &&
        other.image == image &&
        other.status == status &&
        other.price == price &&
        other.currentId == currentId;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        orderid.hashCode ^
        phone.hashCode ^
        name.hashCode ^
        petname.hashCode ^
        address.hashCode ^
        image.hashCode ^
        status.hashCode ^
        price.hashCode ^
        currentId.hashCode;
  }
}

extension NavigatorStateExtension on _i18.NavigationService {
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

  Future<dynamic> navigateToIntermediateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.intermediateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBoardingscreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.boardingscreenView,
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

  Future<dynamic> navigateToDoglistView({
    _i17.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.doglistView,
        arguments: DoglistViewArguments(
            key: key,
            dogData: dogData,
            id: id,
            url: url,
            breed: breed,
            category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCatlistView({
    _i17.Key? key,
    required Map<String, dynamic> catData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.catlistView,
        arguments: CatlistViewArguments(
            key: key,
            catData: catData,
            id: id,
            url: url,
            breed: breed,
            category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToBirdlistView({
    _i17.Key? key,
    required Map<String, dynamic> birdData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.birdlistView,
        arguments: BirdlistViewArguments(
            key: key,
            birdData: birdData,
            id: id,
            url: url,
            breed: breed,
            category: category),
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

  Future<dynamic> navigateToPetdetailsView({
    _i17.Key? key,
    required String name,
    required String color,
    required String owner,
    required String desc,
    required String sex,
    required String location,
    required String url,
    required num price,
    required num age,
    required String petId,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            key: key,
            name: name,
            color: color,
            owner: owner,
            desc: desc,
            sex: sex,
            location: location,
            url: url,
            price: price,
            age: age,
            petId: petId,
            phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetsuppliesDetailsView({
    _i17.Key? key,
    required String name,
    required String desc,
    required String size,
    required String url,
    required String benefits,
    required num price,
    bool isAccessory = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.petsuppliesDetailsView,
        arguments: PetsuppliesDetailsViewArguments(
            key: key,
            name: name,
            desc: desc,
            size: size,
            url: url,
            benefits: benefits,
            price: price,
            isAccessory: isAccessory),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConfirmadoptionView({
    _i17.Key? key,
    required String name,
    required num price,
    required String url,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.confirmadoptionView,
        arguments: ConfirmadoptionViewArguments(
            key: key, name: name, price: price, url: url),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPetscartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.petscartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOrderdetailsView({
    _i17.Key? key,
    required String orderid,
    required String phone,
    required String name,
    required String petname,
    required String address,
    required String image,
    required String status,
    required num price,
    required String currentId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.orderdetailsView,
        arguments: OrderdetailsViewArguments(
            key: key,
            orderid: orderid,
            phone: phone,
            name: name,
            petname: petname,
            address: address,
            image: image,
            status: status,
            price: price,
            currentId: currentId),
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

  Future<dynamic> replaceWithIntermediateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.intermediateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBoardingscreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.boardingscreenView,
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

  Future<dynamic> replaceWithDoglistView({
    _i17.Key? key,
    required Map<String, dynamic> dogData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.doglistView,
        arguments: DoglistViewArguments(
            key: key,
            dogData: dogData,
            id: id,
            url: url,
            breed: breed,
            category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCatlistView({
    _i17.Key? key,
    required Map<String, dynamic> catData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.catlistView,
        arguments: CatlistViewArguments(
            key: key,
            catData: catData,
            id: id,
            url: url,
            breed: breed,
            category: category),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithBirdlistView({
    _i17.Key? key,
    required Map<String, dynamic> birdData,
    required String id,
    required String url,
    required String breed,
    required String category,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.birdlistView,
        arguments: BirdlistViewArguments(
            key: key,
            birdData: birdData,
            id: id,
            url: url,
            breed: breed,
            category: category),
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

  Future<dynamic> replaceWithPetdetailsView({
    _i17.Key? key,
    required String name,
    required String color,
    required String owner,
    required String desc,
    required String sex,
    required String location,
    required String url,
    required num price,
    required num age,
    required String petId,
    required String phone,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.petdetailsView,
        arguments: PetdetailsViewArguments(
            key: key,
            name: name,
            color: color,
            owner: owner,
            desc: desc,
            sex: sex,
            location: location,
            url: url,
            price: price,
            age: age,
            petId: petId,
            phone: phone),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetsuppliesDetailsView({
    _i17.Key? key,
    required String name,
    required String desc,
    required String size,
    required String url,
    required String benefits,
    required num price,
    bool isAccessory = false,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.petsuppliesDetailsView,
        arguments: PetsuppliesDetailsViewArguments(
            key: key,
            name: name,
            desc: desc,
            size: size,
            url: url,
            benefits: benefits,
            price: price,
            isAccessory: isAccessory),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConfirmadoptionView({
    _i17.Key? key,
    required String name,
    required num price,
    required String url,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.confirmadoptionView,
        arguments: ConfirmadoptionViewArguments(
            key: key, name: name, price: price, url: url),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.cartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPetscartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.petscartView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOrderdetailsView({
    _i17.Key? key,
    required String orderid,
    required String phone,
    required String name,
    required String petname,
    required String address,
    required String image,
    required String status,
    required num price,
    required String currentId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.orderdetailsView,
        arguments: OrderdetailsViewArguments(
            key: key,
            orderid: orderid,
            phone: phone,
            name: name,
            petname: petname,
            address: address,
            image: image,
            status: status,
            price: price,
            currentId: currentId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
