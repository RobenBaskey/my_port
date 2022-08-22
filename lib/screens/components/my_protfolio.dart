import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: SizeConfig.screenWidth * 0.02,
                crossAxisSpacing: SizeConfig.screenWidth * 0.02,
                crossAxisCount: 3),
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(
                              SizeConfig.screenWidth * 0.007)),
                      lightSource: LightSource.topLeft,
                      shadowLightColor: Colors.white,
                      shadowDarkColor: Colors.black.withOpacity(0.2),
                      color: Colors.white60),
                ),
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
