/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/catlogo.json
  String get catlogo => 'assets/animations/catlogo.json';

  /// List of all assets
  List<String> get values => [catlogo];
}

class $AssetsCaGen {
  const $AssetsCaGen();

  /// File path: assets/ca/lets-encrypt-r3.pem
  String get letsEncryptR3 => 'assets/ca/lets-encrypt-r3.pem';

  /// List of all assets
  List<String> get values => [letsEncryptR3];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Barlow-Bold.ttf
  String get barlowBold => 'assets/fonts/Barlow-Bold.ttf';

  /// File path: assets/fonts/Barlow-Light.ttf
  String get barlowLight => 'assets/fonts/Barlow-Light.ttf';

  /// File path: assets/fonts/Barlow-Medium.ttf
  String get barlowMedium => 'assets/fonts/Barlow-Medium.ttf';

  /// File path: assets/fonts/Barlow-Regular.ttf
  String get barlowRegular => 'assets/fonts/Barlow-Regular.ttf';

  /// File path: assets/fonts/Barlow-SemiBold.ttf
  String get barlowSemiBold => 'assets/fonts/Barlow-SemiBold.ttf';

  /// List of all assets
  List<String> get values =>
      [barlowBold, barlowLight, barlowMedium, barlowRegular, barlowSemiBold];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/adopt.png
  AssetGenImage get adopt => const AssetGenImage('assets/images/adopt.png');

  /// File path: assets/images/bg.jpg
  AssetGenImage get bg => const AssetGenImage('assets/images/bg.jpg');

  /// File path: assets/images/bird1.jpg
  AssetGenImage get bird1 => const AssetGenImage('assets/images/bird1.jpg');

  /// File path: assets/images/boardingimg.jpg
  AssetGenImage get boardingimg =>
      const AssetGenImage('assets/images/boardingimg.jpg');

  /// File path: assets/images/cage.png
  AssetGenImage get cage => const AssetGenImage('assets/images/cage.png');

  /// File path: assets/images/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/images/cart.png');

  /// File path: assets/images/cat1.jpg
  AssetGenImage get cat1 => const AssetGenImage('assets/images/cat1.jpg');

  /// File path: assets/images/dog.jpg
  AssetGenImage get dog => const AssetGenImage('assets/images/dog.jpg');

  /// File path: assets/images/fav.png
  AssetGenImage get fav => const AssetGenImage('assets/images/fav.png');

  /// File path: assets/images/foods.png
  AssetGenImage get foods => const AssetGenImage('assets/images/foods.png');

  /// File path: assets/images/gifcat.gif
  AssetGenImage get gifcat => const AssetGenImage('assets/images/gifcat.gif');

  /// File path: assets/images/gifdog.gif
  AssetGenImage get gifdog => const AssetGenImage('assets/images/gifdog.gif');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/logindog.png
  AssetGenImage get logindog =>
      const AssetGenImage('assets/images/logindog.png');

  /// File path: assets/images/medicine.png
  AssetGenImage get medicine =>
      const AssetGenImage('assets/images/medicine.png');

  /// File path: assets/images/medicines.png
  AssetGenImage get medicines =>
      const AssetGenImage('assets/images/medicines.png');

  /// File path: assets/images/one.jpg
  AssetGenImage get one => const AssetGenImage('assets/images/one.jpg');

  /// File path: assets/images/paws.png
  AssetGenImage get paws => const AssetGenImage('assets/images/paws.png');

  /// File path: assets/images/petfoods.png
  AssetGenImage get petfoods =>
      const AssetGenImage('assets/images/petfoods.png');

  /// File path: assets/images/petfud.jpg
  AssetGenImage get petfud => const AssetGenImage('assets/images/petfud.jpg');

  /// File path: assets/images/petplus.jpg
  AssetGenImage get petplus => const AssetGenImage('assets/images/petplus.jpg');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile1.jpg
  AssetGenImage get profile1 =>
      const AssetGenImage('assets/images/profile1.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        adopt,
        bg,
        bird1,
        boardingimg,
        cage,
        cart,
        cat1,
        dog,
        fav,
        foods,
        gifcat,
        gifdog,
        home,
        logindog,
        medicine,
        medicines,
        one,
        paws,
        petfoods,
        petfud,
        petplus,
        profile,
        profile1
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsCaGen ca = $AssetsCaGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
