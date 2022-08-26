import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/screens/controller/main_controller.dart';
import 'package:my_portfolio/screens/widget/social_btn.dart';
import 'package:my_portfolio/size_config.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final MainController _mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: <Widget>[
        SizedBox(
          height: SizeConfig.screenHeight * 0.05,
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 10,
                child: SizedBox(
                  height: SizeConfig.screenHeight * 0.9,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.14,
                        ),
                        Text(
                          "WELCOME  TO  MY  WORLD",
                          style: GoogleFonts.montserrat(
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.02,
                        ),
                        RichText(
                            text: TextSpan(
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold,
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                ),
                                children: [
                              TextSpan(text: "Hi, I'm"),
                              TextSpan(
                                text: " Roben Baskey",
                                style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFB003F),
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                ),
                              )
                            ])),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.01,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "a ",
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFB003F),
                                fontSize: SizeConfig.screenWidth * 0.04,
                              ),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                ColorizeAnimatedText('Developer.',
                                    colors: _mainController.colorizeColors,
                                    textStyle: GoogleFonts.rubik(
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.screenWidth * 0.04,
                                    )),
                                ColorizeAnimatedText(
                                  'Professional Coder.',
                                  textStyle: GoogleFonts.rubik(
                                    fontWeight: FontWeight.bold,
                                    fontSize: SizeConfig.screenWidth * 0.04,
                                  ),
                                  colors: _mainController.colorizeColors,
                                ),
                              ],
                              isRepeatingAnimation: true,
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.04,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Energetic and curiosity-driven flutter developer with 1+ years of experience writing top-quality clean code for high-paced businesses."
                                "",
                                style: GoogleFonts.montserrat(
                                    height: 2,
                                    color: Colors.black.withOpacity(0.7),
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth * 0.15,
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "FIND WITH ME",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.025,
                                  ),
                                  Row(
                                    children: [
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/facebook.png",
                                        index: 1,
                                      ),
                                      SizedBox(
                                        width: SizeConfig.screenWidth * 0.02,
                                      ),
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/instagram.png",
                                        index: 2,
                                      ),
                                      SizedBox(
                                        width: SizeConfig.screenWidth * 0.02,
                                      ),
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/linkedin.png",
                                        index: 3,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "BEST SKILL ON",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.screenHeight * 0.025,
                                  ),
                                  Row(
                                    children: [
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/api.png",
                                        index: 4,
                                      ),
                                      SizedBox(
                                        width: SizeConfig.screenWidth * 0.02,
                                      ),
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/server.png",
                                        index: 5,
                                      ),
                                      SizedBox(
                                        width: SizeConfig.screenWidth * 0.02,
                                      ),
                                      SocailButton(
                                        onTap: () {},
                                        image: "asset/icons/figma.png",
                                        index: 6,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.screenHeight * 0.1,
                        )
                      ]),
                )),
            SizedBox(
              width: SizeConfig.screenWidth * 0.05,
            ),
            Expanded(
                flex: 6,
                child: SizedBox(
                  height: SizeConfig.screenHeight * 0.8,
                  child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Positioned(
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(
                                        SizeConfig.screenWidth * 0.007)),
                                depth: 5,
                                lightSource: LightSource.topRight,
                                shadowLightColor: Color(0xFFEEF3F5),
                                shadowDarkColor: Color(0xFFEEF3F5),
                                color: Color(0xFFE8ECEF)),
                            child: Container(
                              height: SizeConfig.screenHeight * 0.65,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFDFE5EA),
                                      Color(0xFFE8ECEF),
                                      Color(0xFFE8ECEF),
                                    ],
                                    begin: FractionalOffset(0.0, 0.0),
                                    end: FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 0.8, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("asset/images/ab.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ]),
                )),
          ],
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.1,
        ),
        Divider(
          color: Colors.grey,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.07,
        ),
      ],
    );
  }
}
