import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({super.key});

  @override
  State<CustomFloatingActionButton> createState() => _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton> {
  String floatingIcon =
      "assets/images/bottom_navigation_bar_icons/floating_icon.png";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 85,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        highlightElevation: 0,
        child: Image.asset(floatingIcon),
      ),
    );
  }
}
