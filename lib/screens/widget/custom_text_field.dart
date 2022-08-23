import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_color.dart';
import '../../size_config.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.name, this.type});
  String name;
  bool? type = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: GoogleFonts.cairo(
              letterSpacing: 1.5, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.01,
        ),
        TextField(
          maxLines: type == true ? 7 : 1,
          decoration: InputDecoration(
              fillColor: Colors.white,
              hoverColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenHeight * 0.01)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: CustomColor.mainColor),
                  borderRadius:
                      BorderRadius.circular(SizeConfig.screenHeight * 0.01))),
        ),
      ],
    );
  }
}
