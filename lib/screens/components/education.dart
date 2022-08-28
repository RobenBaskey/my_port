import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/edu_card.dart';
import 'package:my_portfolio/screens/widget/exper_card.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class Education extends StatelessWidget {
  Education({super.key});
  final MainController _mainController = Get.put(MainController());

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
                itemCount: _mainController.educationList.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  var result = _mainController.educationList[index];
                  return EduCard(index: index, result: result);
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
                itemCount: _mainController.experList.length,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  var result = _mainController.experList[index];
                  return ExperCard(index: index, result: result);
                })),
          ],
        ))
      ],
    );
  }
}
