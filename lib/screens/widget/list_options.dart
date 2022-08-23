import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_color.dart';

class ListOptions extends StatelessWidget {
  ListOptions({super.key, required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check,
        color: CustomColor.mainColor,
      ),
      title: Text(
        name,
        style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
      ),
    );
  }
}
