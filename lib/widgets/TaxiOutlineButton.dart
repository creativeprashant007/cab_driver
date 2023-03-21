import 'package:cab_driver/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class TaxiOutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;

  TaxiOutlineButton({
    required this.title,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        borderSide: BorderSide(color: color),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0),
        ),
        onPressed: onPressed,
        color: color,
        textColor: color,
        child: Container(
          height: 50.0,
          child: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Brand-Bold',
                    color: BrandColors.colorText)),
          ),
        ));
  }
}
