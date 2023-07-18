import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatelessWidget {
  final String? testName;
  final Color? containerColor;
  final Function()? onTabFunction;

  const CategoryContainer(
      {this.testName, this.containerColor, this.onTabFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTabFunction,
        child: Container(
          color: containerColor,
          child: Center(
              child: Text(
            testName!,
            style: GoogleFonts.pacifico(fontSize: 34, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
