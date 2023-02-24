import 'package:doctor_app/utils/constants.dart';
import 'package:doctor_app/widgets/doctors_selection.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/img4.png"),
                            ),
                            Icon(
                              Icons.notifications_none,
                              color: appUiLightColor,
                              size: 30,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "Hi,Dear",
                            style: TextStyle(
                              color: appUiLightColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Your Health is Our\nFirst Priority",
                            style: TextStyle(
                              color: appUiLightColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: appUiLightColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: appUiLightBlackColor,
                                  blurRadius: 6,
                                  spreadRadius: 3,
                                ),
                              ]),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Here....",
                              hintStyle: TextStyle(
                                color: appUiDarkColor.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Categories", style: headingStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 100,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: catNames.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: appUiShadowColor,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: appUiLightBlackColor,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                  child: Center(
                                    child: catIcons[index],
                                  ),
                                ),
                                Text(catNames[index], style: blackContentStyle),
                              ],
                            );
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15),
                    child: Text("Recommended Doctors", style: headingStyle),
                  ),
                  DoctorsSelection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
