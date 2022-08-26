import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/components/custom_color.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';

import '../../size_config.dart';

class SocailButton extends StatelessWidget {
  SocailButton(
      {super.key,
      required this.onTap,
      required this.image,
      required this.index});
  VoidCallback onTap;
  int index;
  String image;
  final MainController _mainController = Get.put(MainController());


  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) => _mainController.onEntered(true, index),
        onExit: (_) => _mainController.onEntered(false, 1000),
        child: Obx(
          () => NeumorphicButton(
              onPressed: onTap,
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.screenWidth * 0.013,
                  horizontal: SizeConfig.screenWidth * 0.013),
              style: NeumorphicStyle(
                  shadowDarkColor: Colors.grey.withOpacity(0.8),
                  shape: NeumorphicShape.concave,
                  color: _mainController.isHovered.value &&
                          index == _mainController.hoverIndex.value
                      ? CustomColor.mainColor.withOpacity(0.5)
                      : Colors.white,
                  boxShape: NeumorphicBoxShape.beveled(
                      BorderRadius.circular(SizeConfig.screenWidth * 0.002))),
              child: Image.asset(
                image,
                height: SizeConfig.screenWidth * 0.02,
                width: SizeConfig.screenWidth * 0.02,
              )),
        ));
  }
}
