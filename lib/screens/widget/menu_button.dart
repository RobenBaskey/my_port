import 'package:flutter/material.dart';

import '../../size_config.dart';

class MenuButton extends StatelessWidget {
  MenuButton({super.key, required this.name, required this.onTap});
  VoidCallback onTap;
  String name;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "Nunito",
            color: Colors.black,
            fontSize: SizeConfig.screenWidth * 0.008,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
