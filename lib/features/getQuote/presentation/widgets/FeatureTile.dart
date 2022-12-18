import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureTile extends StatelessWidget {
  String featureName;

  FeatureTile(this.featureName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=> Navigator.pop(context),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        alignment: Alignment.center,
        width: 347,
        decoration: BoxDecoration(
            color: Color(0xffD4D9FF), borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            featureName,
            style: GoogleFonts.poppins(fontSize: 24,
                fontWeight: FontWeight.w500
                , color: Color(0xff001CFF)),
          ),
        ),
      ),
    );
  }
}
