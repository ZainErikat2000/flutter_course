import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.borderRadius,
      required this.height,
      required this.color,
      required this.callBack,required this.child})
      : super(key: key);
  final double borderRadius;
  final double height;
  final Color color;
  final Widget child;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        //style arguments
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
        onPressed: callBack,
        child: child,
      ),
    );
  }
}
