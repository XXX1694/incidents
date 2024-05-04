import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incidents/core/constants/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.status,
  });
  final String text;
  final VoidCallback? onPressed;
  final String status;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      onPressed: status == 'active' ? onPressed : null,
      pressedOpacity: status == 'passive' ? 1.0 : 0.54,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: status == 'loading'
              ? Platform.isAndroid
                  ? const CircularProgressIndicator(
                      color: mainColor,
                      strokeWidth: 3,
                    )
                  : const CupertinoActivityIndicator(
                      color: mainColor,
                    )
              : Text(
                  text,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.41,
                  ),
                ),
        ),
      ),
    );
  }
}
