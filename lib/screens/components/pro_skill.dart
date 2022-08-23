import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../components/custom_color.dart';
import '../../size_config.dart';

class ProSkill extends StatelessWidget {
  const ProSkill({super.key});

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
              "Features",
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
              "Design Skill",
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
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PHOTOSHOT",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.black,
                            fontSize: SizeConfig.screenWidth * 0.01,
                            letterSpacing: 2),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "90%",
                            style: GoogleFonts.adventPro(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.005,
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        lineHeight: SizeConfig.screenHeight * 0.01,
                        animationDuration: 2000,
                        percent: 0.9,
                        padding: EdgeInsets.all(0),
                        barRadius:
                            Radius.circular(SizeConfig.screenWidth * 0.01),
                        progressColor: CustomColor.mainColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.05,
                      ),
                    ],
                  );
                }))
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
              "Features",
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
              "Development Skill",
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
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "PHOTOSHOT",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.black,
                            fontSize: SizeConfig.screenWidth * 0.01,
                            letterSpacing: 2),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "90%",
                            style: GoogleFonts.adventPro(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.005,
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        lineHeight: SizeConfig.screenHeight * 0.01,
                        animationDuration: 2000,
                        percent: 0.9,
                        padding: EdgeInsets.all(0),
                        barRadius:
                            Radius.circular(SizeConfig.screenWidth * 0.01),
                        progressColor: CustomColor.mainColor.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.05,
                      ),
                    ],
                  );
                }))
          ],
        ))
      ],
    );
  }
}
