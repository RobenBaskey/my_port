import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/size_config.dart';

import '../../components/custom_color.dart';

class Testimonial extends StatelessWidget {
  const Testimonial({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "WHAT CLIENTS SAYS",
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
            "Testimonial",
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
            height: SizeConfig.screenHeight * 0.53,
            child: CarouselSlider.builder(
              itemCount: 3,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Padding(
                  padding: EdgeInsets.all(SizeConfig.screenWidth * 0.01),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: SizeConfig.screenHeight * 0.47,
                        height: SizeConfig.screenHeight * 0.53,
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(
                                      SizeConfig.screenWidth * 0.007)),
                              lightSource: LightSource.topRight,
                              shadowLightColor: Colors.white,
                              shadowDarkColor: Colors.black.withOpacity(0.2),
                              color: Colors.white60),
                        ),
                      ),
                      Container(
                        height: SizeConfig.screenHeight * 0.008,
                        width: SizeConfig.screenHeight * 0.04,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      Expanded(
                          child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Image.asset(
                                        "asset/icons/quotation.png",
                                        height: SizeConfig.screenWidth * 0.05,
                                      ))),
                              NeumorphicButton(
                                  onPressed: () async {},
                                  style: NeumorphicStyle(
                                      shadowDarkColor:
                                          Colors.black.withOpacity(0.5),
                                      color: Colors.white.withOpacity(0.1),
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.beveled(
                                          BorderRadius.circular(
                                              SizeConfig.screenWidth * 0.002))),
                                  padding: const EdgeInsets.all(12.0),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: CustomColor.mainColor,
                                  )),
                              SizedBox(
                                width: SizeConfig.screenWidth * 0.01,
                              ),
                              NeumorphicButton(
                                  onPressed: () async {},
                                  style: NeumorphicStyle(
                                      shadowDarkColor:
                                          Colors.black.withOpacity(0.5),
                                      color: Colors.white.withOpacity(0.1),
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.beveled(
                                          BorderRadius.circular(
                                              SizeConfig.screenWidth * 0.002))),
                                  padding: const EdgeInsets.all(12.0),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: CustomColor.mainColor,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.screenHeight * 0.01,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: double.infinity,
                              width: double.infinity,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    shape: NeumorphicShape.concave,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(
                                            SizeConfig.screenWidth * 0.007)),
                                    lightSource: LightSource.topLeft,
                                    shadowLightColor: Colors.white,
                                    shadowDarkColor:
                                        Colors.black.withOpacity(0.4),
                                    color: Colors.white70),
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                onPageChanged: (value, reason) {},
                height: SizeConfig.screenHeight * 0.53,
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.ease,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.005,
          ),
          DotsIndicator(
            dotsCount: 3,
            onTap: (position) {},
            decorator: DotsDecorator(
                activeColor: CustomColor.mainColor,
                color: Colors.grey.withOpacity(0.4)),
          ),
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
      ),
    );
  }
}
