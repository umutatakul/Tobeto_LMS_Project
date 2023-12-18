import 'package:flutter/material.dart';

AssetImage backgroundAuto() {
  build(BuildContext context) {
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode
        ? const AssetImage("assets/images/loginBackgroundDark.png")
        : const AssetImage("assets/images/loginBackgroundLight.png");
  }

  return const AssetImage("assets/images/loginBackgroundLight.png");
}
