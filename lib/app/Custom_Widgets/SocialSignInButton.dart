import 'package:flutter/material.dart';
import 'package:udemy_course_project/app/Custom_Widgets/CustomElevatedButton.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    required this.borderRadius,
    required this.height,
    required this.color,
    required this.child,
    required this.callBack,
    required this.asset,
  }) : super(
            borderRadius: borderRadius,
            height: height,
            child: child,
            callBack: callBack,
            color: color);
  final String asset;
  //extended class vars
  final double borderRadius;
  final double height;
  final Color color;
  final Widget child;
  final VoidCallback callBack;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomElevatedButton(
      height: height,
      borderRadius: borderRadius,
      color: color,
      callBack: callBack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            asset,
          ),
          const Spacer(),
          child,
          const Spacer(),
          Opacity(
            opacity: 0,
            child: Image.asset(
              asset,
            ),
          ),
        ],
      ),
    );
  }
}
