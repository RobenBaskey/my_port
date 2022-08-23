import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/list_options.dart';
import 'package:my_portfolio/screens/widget/pricing_tab_button.dart';

import '../../components/custom_color.dart';
import '../../size_config.dart';
import '../widget/resume_tab_btn.dart';

class MyPricing extends StatelessWidget {
  MyPricing({super.key});
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PRICING",
                      style: TextStyle(
                          fontFamily: "Nunito",
                          color: CustomColor.mainColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Text(
                      "My Pricing",
                      style: GoogleFonts.rubik(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: SizeConfig.screenWidth * 0.04,
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 5,
                child: SizedBox(
                  width: double.infinity,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(
                              SizeConfig.screenWidth * 0.007)),
                      lightSource: LightSource.topLeft,
                      shadowLightColor: Colors.white,
                      shadowDarkColor: Colors.black.withOpacity(0.4),
                      color: Colors.white70,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.1,
                          width: double.infinity,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(
                                        SizeConfig.screenWidth * 0.007)),
                                lightSource: LightSource.topLeft,
                                shadowLightColor: Colors.white,
                                shadowDarkColor: Colors.grey.withOpacity(0.8),
                                color: Colors.white60),
                            child: Row(
                              children: <Widget>[
                                PricingTabButton(tabName: "Static", index: 0),
                                PricingTabButton(tabName: "Standard", index: 1),
                                PricingTabButton(tabName: "Premium", index: 2),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.05,
                        ),
                        Obx(() {
                          if (_mainController.pricingType.value == 0) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Flutter Basic App",
                                      style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize:
                                              SizeConfig.screenWidth * 0.02,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subtitle: Text(
                                      "Only Design",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize:
                                            SizeConfig.screenWidth * 0.012,
                                      ),
                                    ),
                                    trailing: NeumorphicButton(
                                        onPressed: () async {},
                                        style: NeumorphicStyle(
                                            shadowDarkColor:
                                                Colors.grey.withOpacity(0.8),
                                            shape: NeumorphicShape.flat,
                                            color: Colors.white,
                                            boxShape:
                                                NeumorphicBoxShape.beveled(
                                                    BorderRadius.circular(
                                                        SizeConfig.screenWidth *
                                                            0.002))),
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "\$250",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: "Nunito",
                                              fontSize: SizeConfig.screenWidth *
                                                  0.015,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Text(
                                    "Basic Small app with simple frontend & logic in flutter",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.screenWidth * 0.013,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.timelapse),
                                          label: Text(
                                            "3 Days Delivery",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          )),
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.repeat),
                                          label: Text(
                                            "3 Revisions",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Functional App")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "2 Operating System")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "App Submission")),
                                      Expanded(
                                          child: ListOptions(name: "App Icon")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Splash Screen")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "Include Source Code")),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.screenWidth * 0.05),
                                      child: NeumorphicButton(
                                          onPressed: () async {},
                                          style: NeumorphicStyle(
                                              shadowDarkColor:
                                                  Colors.grey.withOpacity(0.8),
                                              color: Colors.greenAccent
                                                  .withOpacity(0.1),
                                              shape: NeumorphicShape.flat,
                                              boxShape:
                                                  NeumorphicBoxShape.beveled(
                                                      BorderRadius.circular(
                                                          SizeConfig
                                                                  .screenWidth *
                                                              0.002))),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Center(
                                            child: Text(
                                              "ORDER NOW",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Nunito",
                                                  letterSpacing: 2,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.01,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.04,
                                  ),
                                ],
                              ),
                            );
                          } else if (_mainController.pricingType.value == 1) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Flutter App Pro",
                                      style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize:
                                              SizeConfig.screenWidth * 0.02,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subtitle: Text(
                                      "Design & Development",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize:
                                            SizeConfig.screenWidth * 0.012,
                                      ),
                                    ),
                                    trailing: NeumorphicButton(
                                        onPressed: () async {},
                                        style: NeumorphicStyle(
                                            shadowDarkColor:
                                                Colors.grey.withOpacity(0.8),
                                            shape: NeumorphicShape.flat,
                                            color: Colors.white,
                                            boxShape:
                                                NeumorphicBoxShape.beveled(
                                                    BorderRadius.circular(
                                                        SizeConfig.screenWidth *
                                                            0.002))),
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "\$1500",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: "Nunito",
                                              fontSize: SizeConfig.screenWidth *
                                                  0.015,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Text(
                                    "Standard flutter app with Firebase backend",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.screenWidth * 0.013,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.timelapse),
                                          label: Text(
                                            "7 Days Delivery",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          )),
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.repeat),
                                          label: Text(
                                            "Unlimited Revisions",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Functional App")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "2 Operating System")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Firebase Backend")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "Network Integration")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "App Submission")),
                                      Expanded(
                                          child: ListOptions(name: "App Icon")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Splash Screen")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "Include Source Code")),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.screenWidth * 0.05),
                                      child: NeumorphicButton(
                                          onPressed: () async {},
                                          style: NeumorphicStyle(
                                              shadowDarkColor:
                                                  Colors.grey.withOpacity(0.8),
                                              color: Colors.greenAccent
                                                  .withOpacity(0.1),
                                              shape: NeumorphicShape.flat,
                                              boxShape:
                                                  NeumorphicBoxShape.beveled(
                                                      BorderRadius.circular(
                                                          SizeConfig
                                                                  .screenWidth *
                                                              0.002))),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Center(
                                            child: Text(
                                              "ORDER NOW",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Nunito",
                                                  letterSpacing: 2,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.01,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.04,
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.screenWidth * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Flutter App Ultra Pro",
                                      style: TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize:
                                              SizeConfig.screenWidth * 0.02,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    subtitle: Text(
                                      "Design, Development & Testing",
                                      style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize:
                                            SizeConfig.screenWidth * 0.012,
                                      ),
                                    ),
                                    trailing: NeumorphicButton(
                                        onPressed: () async {},
                                        style: NeumorphicStyle(
                                            shadowDarkColor:
                                                Colors.grey.withOpacity(0.8),
                                            shape: NeumorphicShape.flat,
                                            color: Colors.white,
                                            boxShape:
                                                NeumorphicBoxShape.beveled(
                                                    BorderRadius.circular(
                                                        SizeConfig.screenWidth *
                                                            0.002))),
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "\$2500",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: "Nunito",
                                              fontSize: SizeConfig.screenWidth *
                                                  0.015,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Text(
                                    "Fully Ultimate pro large functionality flutter app. unlimited design with backend Technology",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.screenWidth * 0.013,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.timelapse),
                                          label: Text(
                                            "30 Days Delivery",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          )),
                                      TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(Icons.repeat),
                                          label: Text(
                                            "Unlimited Revisions",
                                            style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.05,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Functional App")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "2 Operating System")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "API/Firebase Backend")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "Network Integration")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "App Submission")),
                                      Expanded(
                                          child: ListOptions(name: "App Icon")),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: ListOptions(
                                              name: "Splash Screen")),
                                      Expanded(
                                          child: ListOptions(
                                              name: "Include Source Code")),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.04,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              SizeConfig.screenWidth * 0.05),
                                      child: NeumorphicButton(
                                          onPressed: () async {},
                                          style: NeumorphicStyle(
                                              shadowDarkColor:
                                                  Colors.grey.withOpacity(0.8),
                                              color: Colors.greenAccent
                                                  .withOpacity(0.1),
                                              shape: NeumorphicShape.flat,
                                              boxShape:
                                                  NeumorphicBoxShape.beveled(
                                                      BorderRadius.circular(
                                                          SizeConfig
                                                                  .screenWidth *
                                                              0.002))),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Center(
                                            child: Text(
                                              "ORDER NOW",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontFamily: "Nunito",
                                                  letterSpacing: 2,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.01,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.04,
                                  ),
                                ],
                              ),
                            );
                          }
                        })
                      ],
                    ),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        const Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.07,
        ),
      ],
    );
  }
}
