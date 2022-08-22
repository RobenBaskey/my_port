import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/components/education.dart';
import 'package:my_portfolio/screens/components/pro_skill.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/resume_tab_btn.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class MyResume extends StatelessWidget {
  MyResume({super.key});
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "2+ YEARS OF EXPERIENCE",
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
          "My Resume",
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
            fontSize: SizeConfig.screenWidth * 0.04,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
          width: double.infinity,
          child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(SizeConfig.screenWidth * 0.007)),
                lightSource: LightSource.topLeft,
                shadowLightColor: Colors.white,
                shadowDarkColor: Colors.grey.withOpacity(0.8),
                color: Colors.white60),
            child: Row(
              children: <Widget>[
                ResumeTabButton(tabName: "Education", index: 0),
                ResumeTabButton(tabName: "Professional Skills", index: 1),
                ResumeTabButton(tabName: "Experience", index: 2),
                ResumeTabButton(tabName: "Interview", index: 3),
              ],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        Obx(() {
          if (_mainController.resumeType.value == 0) {
            return Education();
          } else if (_mainController.resumeType.value == 1) {
            return ProSkill();
          } else {
            return Education();
          }
        }),
        SizedBox(
          height: SizeConfig.screenHeight * 0.07,
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
