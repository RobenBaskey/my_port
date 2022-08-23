import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/widget/custom_text_field.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';
import '../widget/social_btn.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "CONTACT",
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
          "Contact With Me",
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
            fontSize: SizeConfig.screenWidth * 0.04,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(SizeConfig.screenWidth * 0.007)),
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black.withOpacity(0.2),
                    color: Colors.white60),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.015),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: SizeConfig.screenHeight * 0.37,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                SizeConfig.screenWidth * 0.007),
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.04,
                        ),
                        Text("Roben Baskey",
                            style: GoogleFonts.kanit(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenWidth * 0.02,
                            )),
                        Text("Senior Flutter Developer",
                            style: GoogleFonts.kanit(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: SizeConfig.screenWidth * 0.013,
                            )),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.02,
                        ),
                        Text(
                            "I am available for freelance work. Connect with me via and call in to my account.",
                            style: GoogleFonts.kanit(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: SizeConfig.screenWidth * 0.013,
                            )),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.02,
                        ),
                        Text("Phone : +8801717601905",
                            style: GoogleFonts.kanit(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: SizeConfig.screenWidth * 0.013,
                            )),
                        Text("Email : baskeyjames10@gmail.com",
                            style: GoogleFonts.kanit(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: SizeConfig.screenWidth * 0.013,
                            )),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.025,
                        ),
                        Text("FIND WITH ME",
                            style: GoogleFonts.kanit(
                              color: Colors.black,
                              fontSize: SizeConfig.screenWidth * 0.01,
                            )),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            NeumorphicButton(
                                onPressed: () async {},
                                style: NeumorphicStyle(
                                    shadowDarkColor:
                                        Colors.grey.withOpacity(0.8),
                                    shape: NeumorphicShape.concave,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.beveled(
                                        BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.002))),
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(Icons.facebook)),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.02,
                            ),
                            NeumorphicButton(
                                onPressed: () async {},
                                style: NeumorphicStyle(
                                    shadowDarkColor:
                                        Colors.grey.withOpacity(0.8),
                                    shape: NeumorphicShape.concave,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.beveled(
                                        BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.002))),
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(Icons.facebook)),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.02,
                            ),
                            NeumorphicButton(
                                onPressed: () async {},
                                style: NeumorphicStyle(
                                    shadowDarkColor:
                                        Colors.grey.withOpacity(0.8),
                                    shape: NeumorphicShape.concave,
                                    color: Colors.white,
                                    boxShape: NeumorphicBoxShape.beveled(
                                        BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.002))),
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(Icons.facebook)),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.025,
            ),
            Expanded(
              flex: 6,
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(SizeConfig.screenWidth * 0.007)),
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black.withOpacity(0.2),
                    color: Colors.white60),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.015),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: CustomTextField(
                              name: "YOUR NAME",
                            )),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.01,
                            ),
                            Expanded(
                                child: CustomTextField(
                              name: "PHONE NUMBER",
                            ))
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.03,
                        ),
                        CustomTextField(
                          name: "EMAIL",
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.03,
                        ),
                        CustomTextField(
                          name: "SUBJECT",
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.03,
                        ),
                        CustomTextField(name: "YOUR MESSAGE", type: true),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.05,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.screenWidth * 0.05),
                            child: NeumorphicButton(
                                onPressed: () async {},
                                style: NeumorphicStyle(
                                    shadowDarkColor:
                                        Colors.grey.withOpacity(0.8),
                                    color: Colors.greenAccent.withOpacity(0.1),
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.beveled(
                                        BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.002))),
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                  child: Text(
                                    "SEND MESSAGE",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontFamily: "Nunito",
                                        letterSpacing: 2,
                                        fontSize: SizeConfig.screenWidth * 0.01,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )),
                          ),
                        ),
                      ]),
                ),
              ),
            )
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
