import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/what_do_card.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class WhatDo extends StatelessWidget {
  WhatDo({super.key});
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "FEATURE",
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
          "What  I  Do",
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.8),
            fontSize: SizeConfig.screenWidth * 0.04,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        AnimationLimiter(
            child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 5 / 4,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(_mainController.whList.length, (index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 375),
              columnCount: 3,
              child: ScaleAnimation(
                child: FadeInAnimation(
                    child: WhatDoCard(
                  whModel: _mainController.whList[index],
                  index: index,
                )),
              ),
            );
          }),
        )),
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
