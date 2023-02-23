import 'package:doctor_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: appUiThemeColor,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: appUiThemeColor,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: appUiThemeColor,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: appUiThemeColor,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: appUiThemeColor,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    appUiThemeColor.withOpacity(0.8),
                    appUiThemeColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
