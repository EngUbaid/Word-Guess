
import 'package:flutter/material.dart';

class AppBtn extends StatelessWidget {
  final Widget tittle;
  final double height;
  final double? width;
  final Color colors;
  final Color? gradientcolor1;
  final Color? gradientcolor2;
  final Color bordercolor;
  final VoidCallback ontap;
  final bool isLoading;
  final bool isobsecure;

  const AppBtn({
    super.key,
    required this.tittle,
    required this.height,
    required this.colors,
    required this.bordercolor,
    required this.ontap,
    this.isLoading = false,
    this.isobsecure = false,
    this.width,
    this.gradientcolor1,
    this.gradientcolor2,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : ontap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: bordercolor),
          borderRadius: BorderRadius.circular(30),
          gradient: (gradientcolor1 != null && gradientcolor2 != null)
              ? LinearGradient(
                  colors: [gradientcolor1!, gradientcolor2!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : null, // If no gradient provided, set to null
          color: (gradientcolor1 == null || gradientcolor2 == null) ? colors : null, // Use solid color if no gradient
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : tittle,
        ),
      ),
    );
  }
}
