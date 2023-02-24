import 'package:flutter/material.dart';

const Color appUiLightColor = Colors.white;
const Color appUiDarkColor = Colors.black;
const Color appUiThemeColor = Color.fromRGBO(0, 139, 139, 1);
const Color appUiLightBlackColor = Colors.black12;
const Color appUiShadowColor = Color(0xFFF2F8FF);
const Color appUiBgColor = Color(0xFFD9E4EE);

//Text style

TextStyle headingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: appUiDarkColor.withOpacity(0.7),
);

TextStyle blackContentStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: appUiDarkColor.withOpacity(0.7),
);
TextStyle subHeadingStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: appUiDarkColor.withOpacity(0.6),
);
TextStyle themeHeadingStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: appUiThemeColor.withOpacity(0.7),
);

TextStyle wHeadingStyle = TextStyle(
  color: appUiLightColor,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
