import 'package:flutter/material.dart';
import 'package:quill/src/data/utils/colors.dart';

import '../../data/global_widgets/bottom_navigation_bar.dart';
import '../../data/global_widgets/floating_action_button.dart';

class EmptyScreen extends StatefulWidget {
  const EmptyScreen({super.key});

  @override
  State<EmptyScreen> createState() => _EmptyScreenState();
}

class _EmptyScreenState extends State<EmptyScreen> {
  String profileImage = "assets/images/profile_images/profile.png";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColors.backgroundColor,
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigation(),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 130,
                  width: MediaQuery.sizeOf(context).width,
                  color: CustomColors.blueColor,
                  child: SafeArea(
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
                              color: CustomColors.lightBlueColor
                            ),
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
                              color: CustomColors.lightBlueColor
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(left: 25),
                            child: ListTile(
                              title: Text(
                                "Hello Noor!",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Text(
                                "Today you have no tasks",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              trailing: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(profileImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                          "assets/images/clipboard_icon/clipboard_icon.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
                      child: Text(
                        "Not Notes :(",
                        style: TextStyle(
                            fontSize: 22, color: CustomColors.headingTxtColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "You have no task to do.",
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.paragraphTxtColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}