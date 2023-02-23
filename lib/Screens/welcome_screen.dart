import 'package:doctor_app/Screens/home_screen.dart';
import 'package:doctor_app/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            appUiThemeColor.withOpacity(0.2),
            // appUiThemeColor.withOpacity(0.8),
            appUiThemeColor,
          ], begin: Alignment.topCenter, end: Alignment.bottomRight),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/img2.png"),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Connect Doctors",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: appUiLightColor),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Appoint Yours Doctors",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: appUiLightColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 15),
                      child: Text(
                        "Let's Go",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: appUiThemeColor),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
