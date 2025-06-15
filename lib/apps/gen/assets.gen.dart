/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  /// File path: assets/img/history_not_found.png
  AssetGenImage get historyNotFound =>
      const AssetGenImage('assets/img/history_not_found.png');

  /// File path: assets/img/lettuce.png
  AssetGenImage get lettuce => const AssetGenImage('assets/img/lettuce.png');

  /// File path: assets/img/lettuceDetail.png
  AssetGenImage get lettuceDetail =>
      const AssetGenImage('assets/img/lettuceDetail.png');

  /// File path: assets/img/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/img/logo.png');

  /// File path: assets/img/melon_icon.png
  AssetGenImage get melonIcon =>
      const AssetGenImage('assets/img/melon_icon.png');

  /// File path: assets/img/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/img/splash.png');

  /// File path: assets/img/upload_icon.png
  AssetGenImage get uploadIcon =>
      const AssetGenImage('assets/img/upload_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        historyNotFound,
        lettuce,
        lettuceDetail,
        logo,
        melonIcon,
        splash,
        uploadIcon
      ];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
