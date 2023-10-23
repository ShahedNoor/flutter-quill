import 'package:flutter/material.dart';

import '../../../data/utils/colors.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      color: CustomColors.blueColor,
      child: Stack(
        children: [
          Positioned(
            top: -45,
            left: -50,
            height: 145,
            width: 145,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: CustomColors.lightBlueColor),
            ),
          ),
          Positioned(
            top: -20,
            right: -30,
            height: 100,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: CustomColors.lightBlueColor),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
