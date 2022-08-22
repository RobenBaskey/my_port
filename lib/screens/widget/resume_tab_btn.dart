import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class ResumeTabButton extends StatelessWidget {
  ResumeTabButton({super.key, required this.tabName, required this.index});
  String tabName;
  int index;
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: InkWell(
        onTap: () {
          _mainController.resumeType.value = index;
        },
        child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Obx(() {
              if (_mainController.resumeType == index) {
                return Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(
                                SizeConfig.screenWidth * 0.007)),
                        lightSource: LightSource.topLeft,
                        shadowLightColor: Colors.white,
                        shadowDarkColor: Colors.grey.withOpacity(0.8),
                        color: Colors.white60),
                    child: Center(
                      child: Text(
                        tabName,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            color: CustomColor.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenWidth * 0.011,
                            letterSpacing: 2),
                      ),
                    ));
              } else {
                return Center(
                  child: Text(
                    tabName,
                    style: TextStyle(
                        fontFamily: "Nunito",
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.011,
                        letterSpacing: 2),
                  ),
                );
              }
            })),
      ),
    );
  }
}
