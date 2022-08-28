import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/custom_color.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/model/edu_model.dart';

import '../../size_config.dart';

class EduCard extends StatelessWidget {
  EduCard({super.key, required this.index, required this.result});
  EducationModel result;
  int index;
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (_) => _mainController.onEduEntered(true, index),
        onExit: (_) => _mainController.onEduEntered(false, 1000),
        child: Obx(
          () => Row(
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
                      padding: EdgeInsets.all(SizeConfig.screenWidth * 0.003),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.6)),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _mainController.eduHoverIndex.value == index &&
                                        _mainController.isEduHovered.value
                                    ? CustomColor.mainColor
                                    : Colors.white),
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
                  child: _mainController.eduHoverIndex.value == index &&
                          _mainController.isEduHovered.value
                      ? Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(
                                      SizeConfig.screenWidth * 0.007)),
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Colors.white,
                              shadowDarkColor: Colors.black.withOpacity(0.2),
                              color: CustomColor.mainColor.withOpacity(0.8)),
                          child: Padding(
                            padding:
                                EdgeInsets.all(SizeConfig.screenWidth * 0.03),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              result.title,
                                              style: GoogleFonts.rubik(
                                                  color: Colors.white,
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.013,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              result.duration,
                                              style: GoogleFonts.rubik(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      NeumorphicButton(
                                          onPressed: () async {},
                                          style: NeumorphicStyle(
                                              shadowLightColor: Colors.red,
                                              shadowDarkColor:
                                                  Colors.red.withOpacity(0.8),
                                              shape: NeumorphicShape.flat,
                                              color: Colors.deepOrange,
                                              boxShape:
                                                  NeumorphicBoxShape.beveled(
                                                      BorderRadius.circular(
                                                          SizeConfig
                                                                  .screenWidth *
                                                              0.002))),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "${result.point}/${result.outOfPoint}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                letterSpacing: 0.4,
                                                fontFamily: "Nunito",
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.007,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.035,
                                  ),
                                  Divider(
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.01,
                                  ),
                                  Expanded(
                                      child: Text(
                                    result.description,
                                    maxLines: 3,
                                    style: GoogleFonts.rubik(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.screenWidth * 0.013),
                                    overflow: TextOverflow.fade,
                                  ))
                                ]),
                          ),
                        )
                      : Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(
                                      SizeConfig.screenWidth * 0.007)),
                              lightSource: LightSource.topLeft,
                              shadowLightColor: Colors.white,
                              shadowDarkColor: Colors.black.withOpacity(0.2),
                              color: Colors.white60),
                          child: Padding(
                            padding:
                                EdgeInsets.all(SizeConfig.screenWidth * 0.03),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              result.title,
                                              style: GoogleFonts.rubik(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  fontSize:
                                                      SizeConfig.screenWidth *
                                                          0.013,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              result.duration,
                                              style: GoogleFonts.rubik(
                                                color: Colors.black
                                                    .withOpacity(0.7),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      NeumorphicButton(
                                          onPressed: () async {},
                                          style: NeumorphicStyle(
                                              shadowDarkColor:
                                                  Colors.grey.withOpacity(0.8),
                                              shape: NeumorphicShape.flat,
                                              color: Colors.white,
                                              boxShape:
                                                  NeumorphicBoxShape.beveled(
                                                      BorderRadius.circular(
                                                          SizeConfig
                                                                  .screenWidth *
                                                              0.002))),
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "${result.point}/${result.outOfPoint}",
                                            style: TextStyle(
                                                color: Colors.red,
                                                letterSpacing: 0.4,
                                                fontFamily: "Nunito",
                                                fontSize:
                                                    SizeConfig.screenWidth *
                                                        0.007,
                                                fontWeight: FontWeight.w600),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.035,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.01,
                                  ),
                                  Expanded(
                                      child: Text(
                                    result.description,
                                    maxLines: 3,
                                    style: GoogleFonts.rubik(
                                        fontSize:
                                            SizeConfig.screenWidth * 0.013),
                                    overflow: TextOverflow.fade,
                                  ))
                                ]),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ));
  }
}
