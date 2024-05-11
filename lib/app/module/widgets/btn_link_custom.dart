import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class BtnLinkCustom extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final Widget label;
  const BtnLinkCustom({super.key, this.onPressed, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: label,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CustomColor.redButton),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )),
          padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
            (Set<MaterialState> states) {
              return const EdgeInsets.symmetric(horizontal: 15);
            },
          ),
        ),
      ),
    );
  }
}
