import 'package:flutter/material.dart';

class SizedTintImageWidget extends StatelessWidget {
  final double? height;
  final double width;
  final String imageAssetPath;

  final Widget iconWidget;
  final bool showIcon;
  final BoxFit fit;
  final bool noWH;
  final color;

  // final Icon icon;

  // ignore: use_key_in_widget_constructors
  const SizedTintImageWidget({
    this.height = 100,
    this.width = 100,
    this.imageAssetPath = "",
    this.showIcon = false,
    this.iconWidget = const FlutterLogo(),
    this.fit = BoxFit.contain,
    this.noWH = false,
    this.color,
    // this.color = ColorPalette.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // uncomment the line below to add border
      // padding: EdgeInsets.only(top: 16.0),
      width: noWH ? null : width,
      height: noWH ? null : height,
      child: showIcon
          ? iconWidget
          : Image.asset(
              imageAssetPath,
              fit: fit,
              height: noWH ? null : height,
              width: noWH ? null : width,
              color: color,
            ),
    );
  }
}
