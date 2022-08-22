import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../size_config.dart';

class SocailButton extends StatelessWidget {
  SocailButton({super.key, required this.onTap});
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        onPressed: onTap,
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.screenWidth * 0.013,
            horizontal: SizeConfig.screenWidth * 0.013),
        style: NeumorphicStyle(
            shadowDarkColor: Colors.grey.withOpacity(0.8),
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.beveled(
                BorderRadius.circular(SizeConfig.screenWidth * 0.002))),
        child: Icon(Icons.facebook));
  }
}
