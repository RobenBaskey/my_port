import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/port_card.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class MyPortfolio extends StatelessWidget {
  MyPortfolio({super.key});
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    var _aspectRatio;
    double aspt(double height) {
      var _crossAxisSpacing = 8;
      var _screenWidth = MediaQuery.of(context).size.width;
      var _crossAxisCount = 2;
      var _width =
          (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
              _crossAxisCount;
      var cellHeight = height;
      return _aspectRatio = _width / cellHeight;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "VISIT MY PORTFOLIO AND KEEP YOUR FEEDBACK",
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
          "My Portfolio",
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
            fontSize: SizeConfig.screenWidth * 0.04,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: _mainController.portList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: SizeConfig.screenWidth * 0.02,
                crossAxisSpacing: SizeConfig.screenWidth * 0.02,
                crossAxisCount: 3,
                childAspectRatio: aspt(SizeConfig.screenHeight * 0.94)),
            itemBuilder: ((context, index) {
              var result = _mainController.portList[index];
              return PortCard(
                result: result,
                index: index,
              );
            })),
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
