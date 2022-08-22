import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "2010 - 2020",
              style: TextStyle(
                  fontFamily: "Nunito",
                  color: CustomColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.01,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.01,
            ),
            Text(
              "Education Quality",
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8),
                fontSize: SizeConfig.screenWidth * 0.02,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Container(
                            height: index == 2
                                ? SizeConfig.screenHeight * 0.35
                                : SizeConfig.screenHeight * 0.4,
                            width: SizeConfig.screenWidth * 0.005,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          Positioned(
                            top: SizeConfig.screenWidth * 0.027,
                            left: -SizeConfig.screenWidth * 0.0035,
                            child: Container(
                              height: SizeConfig.screenWidth * 0.012,
                              width: SizeConfig.screenWidth * 0.012,
                              padding: EdgeInsets.all(
                                  SizeConfig.screenWidth * 0.003),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.6)),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: SizeConfig.screenWidth * 0.03,
                              ),
                              Container(
                                height: SizeConfig.screenWidth * 0.005,
                                width: SizeConfig.screenWidth * 0.03,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          height: SizeConfig.screenHeight * 0.35,
                          width: double.infinity,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(
                                        SizeConfig.screenWidth * 0.007)),
                                lightSource: LightSource.topLeft,
                                shadowLightColor: Colors.white,
                                shadowDarkColor: Colors.black.withOpacity(0.2),
                                color: Colors.white60),
                          ),
                        ),
                      ),
                    ],
                  );
                })),
          ],
        )),
        SizedBox(
          width: SizeConfig.screenWidth * 0.02,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "2020 - Present",
              style: TextStyle(
                  fontFamily: "Nunito",
                  color: CustomColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.screenWidth * 0.01,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.01,
            ),
            Text(
              "Job Experience",
              style: GoogleFonts.rubik(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8),
                fontSize: SizeConfig.screenWidth * 0.02,
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Container(
                            height: index == 2
                                ? SizeConfig.screenHeight * 0.35
                                : SizeConfig.screenHeight * 0.4,
                            width: SizeConfig.screenWidth * 0.005,
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          Positioned(
                            top: SizeConfig.screenWidth * 0.027,
                            left: -SizeConfig.screenWidth * 0.0035,
                            child: Container(
                              height: SizeConfig.screenWidth * 0.012,
                              width: SizeConfig.screenWidth * 0.012,
                              padding: EdgeInsets.all(
                                  SizeConfig.screenWidth * 0.003),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.6)),
                              child: Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: SizeConfig.screenWidth * 0.03,
                              ),
                              Container(
                                height: SizeConfig.screenWidth * 0.005,
                                width: SizeConfig.screenWidth * 0.03,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          height: SizeConfig.screenHeight * 0.35,
                          width: double.infinity,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(
                                        SizeConfig.screenWidth * 0.007)),
                                lightSource: LightSource.topLeft,
                                shadowLightColor: Colors.white,
                                depth: 10,
                                shadowDarkColor: Colors.black.withOpacity(0.2),
                                color: Colors.white60),
                          ),
                        ),
                      ),
                    ],
                  );
                })),
          ],
        ))
      ],
    );
  
  }
}
