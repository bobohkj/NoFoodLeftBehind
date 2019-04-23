import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();
  static const Color loginpagebackground= const Color(0xFFEFA451);
  static const Color logintextbox= const Color(0xFFF4B774);



  static const Color loginGradientStart = const Color(0xFFE1F5FE);
  static const Color loginGradientEnd = const Color(0xFF0277BD);
//粉色 0xFFf7418c 肉色0xFFfbab66
  static const Color activecolor = const Color.fromRGBO(79, 101, 225, 1);
  static const color = Color(0xFF303F9F);
  static const Color meetingbackgroundcolor = const Color.fromRGBO(67, 73, 96, 1);
  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
