import 'package:doctor_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointmentScreen extends StatefulWidget {
  AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  List<Map> hospitalTimePref = [
    {
      "txt": "10:00am",
      "isSelected": false,
    },
    {
      "txt": "10:15am",
      "isSelected": false,
    },
    {
      "txt": "10:30am",
      "isSelected": false,
    },
    {
      "txt": "10:45am",
      "isSelected": false,
    },
    {
      "txt": "11:00am",
      "isSelected": false,
    },
    {
      "txt": "11:15am",
      "isSelected": false,
    },
    {
      "txt": "11:30am",
      "isSelected": false,
    },
    {
      "txt": "11:45am",
      "isSelected": false,
    },
    {
      "txt": "12:00pm",
      "isSelected": false,
    },
    {
      "txt": "12:15pm",
      "isSelected": false,
    },
    {
      "txt": "12:30pm",
      "isSelected": false,
    },
    {
      "txt": "12:45pm",
      "isSelected": false,
    },
    {
      "txt": "1:00pm",
      "isSelected": false,
    },
    {
      "txt": "1:15pm",
      "isSelected": false,
    },
    {
      "txt": "1:30pm",
      "isSelected": false,
    },
    {
      "txt": "1:45pm",
      "isSelected": false,
    },
    {
      "txt": "2:00pm",
      "isSelected": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/doctor2.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      appUiThemeColor.withOpacity(0.9),
                      appUiThemeColor.withOpacity(0),
                      appUiThemeColor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: appUiShadowColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: appUiLightBlackColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Icon(
                                Icons.arrow_back,
                                color: appUiThemeColor,
                                size: 28,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: appUiShadowColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: appUiLightBlackColor,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: Icon(
                                Icons.favorite_border,
                                color: appUiThemeColor,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          doctorinfo("Patients", "1.8k"),
                          doctorinfo("Experience", "10 yr"),
                          doctorinfo("Ratings", "4.9"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr Looney",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: appUiThemeColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: [
                        Icon(
                          MdiIcons.heartPlus,
                          color: Colors.red,
                          size: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Surgeon",
                            style: TextStyle(
                                fontSize: 17,
                                color: appUiDarkColor.withOpacity(0.6)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                      style: blackContentStyle,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Book Date",
                      style: subHeadingStyle,
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 25),
                              decoration: BoxDecoration(
                                  color: index == 1
                                      ? appUiThemeColor
                                      : appUiShadowColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appUiLightBlackColor,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${index + 8}",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: index == 1
                                          ? appUiLightColor
                                          : appUiDarkColor.withOpacity(0.6),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "FEB",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                        color: index == 1
                                            ? appUiLightColor
                                            : appUiDarkColor.withOpacity(0.6),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Book Time",
                      style: subHeadingStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Wrap(
                      // spacing: 5,
                      runSpacing: 10,
                      children: hospitalTimePref
                          .map((Map fp) => HospitalTimePreSel(fp))
                          .toList(),
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

  Widget HospitalTimePreSel(Map e) {
    bool isSelected = e["isSelected"];

    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            e["isSelected"] = isSelected;
          });
        },
        child: Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            color: isSelected ? appUiThemeColor : appUiLightColor,
            border: Border.all(color: appUiThemeColor, width: 1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              e["txt"] ?? "",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: isSelected ? appUiLightColor : appUiThemeColor),
            ),
          ),
        ),
      ),
    );
  }

  Column doctorinfo(String txt, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt,
          style: TextStyle(
            color: appUiLightColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            value,
            style: wHeadingStyle,
          ),
        )
      ],
    );
  }
}
