import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/model/portfolio_model.dart';

import '../../components/custom_color.dart';
import '../../size_config.dart';

class PortCard extends StatelessWidget {
  PortCard({super.key, required this.result, required this.index});
  PortfolioModel result;
  int index;
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mainController.onPortEntered(true, index),
      onExit: (_) => _mainController.onPortEntered(false, 1000),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() => Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(SizeConfig.screenWidth * 0.007)),
                    lightSource: LightSource.topLeft,
                    shadowLightColor: Colors.white,
                    shadowDarkColor: Colors.black.withOpacity(0.2),
                    color: Colors.white60),
                child: Padding(
                  padding: EdgeInsets.all(SizeConfig.screenHeight * 0.04),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                            onTap: () {},
                            child: Container(
                                height: SizeConfig.screenHeight * 0.3,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(
                                      SizeConfig.screenWidth * 0.007),
                                ),
                                child: Stack(
                                  children: [
                                    AnimatedPositioned(
                                        duration: Duration(milliseconds: 1000),
                                        curve: Curves.easeInOut,
                                        height: _mainController
                                                        .portHoverIndex.value ==
                                                    index &&
                                                _mainController
                                                    .isPortHovered.value
                                            ? SizeConfig.screenHeight * 0.3
                                            : SizeConfig.screenHeight * 0.3 -
                                                20,
                                        child: Container(
                                          height: SizeConfig.screenHeight * 0.3,
                                          width: SizeConfig.screenWidth * 0.4,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "asset/images/ab.png"),
                                                fit: BoxFit.fitHeight),
                                          ),
                                        )),
                                  ],
                                ))),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.02,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                result.type,
                                style: GoogleFonts.openSans(
                                    color: CustomColor.mainColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(
                                    SizeConfig.screenWidth * 0.001),
                                icon: Icon(
                                  Icons.favorite_outline,
                                  size: SizeConfig.screenHeight * 0.02,
                                )),
                            Text(
                              "750",
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.01,
                        ),
                        Text(
                          result.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: "Nunito",
                              color: Colors.black,
                              fontSize: SizeConfig.screenWidth * 0.012,
                              fontWeight: FontWeight.w600),
                        ),
                      ]),
                ),
              ))),
    );
  }
}
