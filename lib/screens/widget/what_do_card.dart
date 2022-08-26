import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/components/custom_color.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/model/what_do_mode.dart';

import '../../size_config.dart';

class WhatDoCard extends StatelessWidget {
  WhatDoCard({super.key, required this.index, required this.whModel});
  int index;
  WHModel whModel;
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mainController.onWhCardEntered(true, index),
      onExit: (_) => _mainController.onWhCardEntered(false, 1000),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(SizeConfig.screenWidth * 0.007)),
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black.withOpacity(0.2),
                    color: _mainController.whHoverIndex.value == index &&
                            _mainController.isWHHovered.value
                        ? CustomColor.mainColor.withOpacity(0.8)
                        : Colors.white60),
                child: _mainController.whHoverIndex.value == index &&
                        _mainController.isWHHovered.value
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.03,
                            right: SizeConfig.screenWidth * 0.03,
                            bottom: SizeConfig.screenWidth * 0.01,
                            top: SizeConfig.screenWidth * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              whModel.icon,
                              size: SizeConfig.screenWidth * 0.04,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: SizeConfig.screenWidth * 0.01,
                            ),
                            Text(
                              whModel.title,
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.white,
                                  fontSize: SizeConfig.screenWidth * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeConfig.screenWidth * 0.02,
                            ),
                            Text(
                              whModel.description,
                              maxLines: 3,
                              style: TextStyle(
                                fontFamily: "Nunito",
                                color: Colors.white,
                                fontSize: SizeConfig.screenWidth * 0.012,
                              ),
                            )
                          ],
                        ),
                      )
                    : AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.03,
                            right: SizeConfig.screenWidth * 0.03,
                            bottom: SizeConfig.screenWidth * 0.01,
                            top: SizeConfig.screenWidth * 0.03),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              whModel.icon,
                              size: SizeConfig.screenWidth * 0.04,
                              color: CustomColor.mainColor,
                            ),
                            SizedBox(
                              height: SizeConfig.screenWidth * 0.01,
                            ),
                            Text(
                              whModel.title,
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: SizeConfig.screenWidth * 0.02,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: SizeConfig.screenWidth * 0.02,
                            ),
                            Text(
                              whModel.description,
                              maxLines: 3,
                              style: TextStyle(
                                fontFamily: "Nunito",
                                color: Colors.black.withOpacity(0.7),
                                fontSize: SizeConfig.screenWidth * 0.012,
                              ),
                            )
                          ],
                        ),
                      )),
          )),
    );
  }
}
