import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quill/src/controllers/onboarding_controller.dart';
import 'package:quill/src/data/utils/colors.dart';
import 'package:quill/src/modules/login/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final onboardingItem =
        Provider.of<OnboardingController>(context).onboardingProvider;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/onboarding_icon/onboarding_icon.png",
            width: MediaQuery.sizeOf(context).width / 3,
            height: MediaQuery.sizeOf(context).height / 3,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              onboardingItem[0]["onboardingHeaderText"],
              style: TextStyle(
                  fontSize: 22,
                  color: CustomColors.headingTxtColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22, 0, 22, 70),
            child: Text(
              onboardingItem[0]["onboardingParagraphText"],
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17, color: CustomColors.paragraphTxtColor),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: CustomColors.blueColor),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              onboardingItem[0]["onboardingButtonText"],
              style: TextStyle(color: CustomColors.whiteColor, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
