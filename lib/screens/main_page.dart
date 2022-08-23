import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/custom_color.dart';
import 'package:my_portfolio/screens/components/contact_me.dart';
import 'package:my_portfolio/screens/components/home_page.dart';
import 'package:my_portfolio/screens/components/my_protfolio.dart';
import 'package:my_portfolio/screens/components/my_resume.dart';
import 'package:my_portfolio/screens/components/pricing.dart';
import 'package:my_portfolio/screens/components/testimonial.dart';
import 'package:my_portfolio/screens/components/what_do.dart';
import 'package:my_portfolio/screens/widget/menu_button.dart';
import 'package:my_portfolio/size_config.dart';

import 'components/my_blog.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: SizeConfig.screenHeight * 0.1,
          leadingWidth: SizeConfig.screenWidth * 0.2,
          leading: SizedBox(
            height: SizeConfig.screenWidth * 0.07,
            child: Row(children: <Widget>[
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              Container(
                height: SizeConfig.screenHeight * 0.06,
                width: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage("asset/images/my_pic.png"),
                        fit: BoxFit.cover),
                    border: Border.all(
                        color: Color(0xFFBEC6CC).withOpacity(0.5), width: 3)),
              ),
              SizedBox(
                width: SizeConfig.screenWidth * 0.007,
              ),
              const Text(
                "ROBEN",
                style: TextStyle(
                    fontFamily: "Nunito",
                    color: Color(0xFF212226),
                    fontWeight: FontWeight.bold),
              )
            ]),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MenuButton(onTap: () {}, name: "HOME"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "FEATURE"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "PORTFOLIO"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "RESUME"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "CLIENTS"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "PRICING"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "BLOG"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              MenuButton(onTap: () {}, name: "CONTACT"),
              SizedBox(
                width: SizeConfig.screenWidth * 0.01,
              ),
              NeumorphicButton(
                  onPressed: () async {},
                  style: NeumorphicStyle(
                      shadowDarkColor: Colors.grey.withOpacity(0.8),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.beveled(
                          BorderRadius.circular(
                              SizeConfig.screenWidth * 0.002))),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "BUY NOW",
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: "Nunito",
                        fontSize: SizeConfig.screenWidth * 0.007,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.05),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HomePage(),
                WhatDo(),
                MyPortfolio(),
                MyResume(),
                Testimonial(),
                MyPricing(),
                MyBlog(),
                ContactMe(),
              ]),
        ),
      ),
    );
  }
}
