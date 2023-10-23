import 'package:flutter/material.dart';
import 'package:quill/src/data/utils/colors.dart';
import 'package:quill/src/modules/empty/empty_screen.dart';
import 'package:quill/src/modules/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/login_icon/login_icon.png",
                height: MediaQuery.sizeOf(context).height / 3,
                width: MediaQuery.sizeOf(context).width / 2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45, 16, 45, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Icon(
                        Icons.person_outline,
                        color: CustomColors.blueColor,
                      ),
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(
                        color: CustomColors.paragraphTxtColor, fontSize: 17),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Icon(
                        Icons.lock_outline,
                        color: CustomColors.blueColor,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                        color: CustomColors.paragraphTxtColor, fontSize: 17),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: CustomColors.blueColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmptyScreen()));
                  },
                  child: Text(
                    "Login",
                    style:
                        TextStyle(color: CustomColors.whiteColor, fontSize: 17),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(55, 45, 55, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                          fontSize: 17, color: CustomColors.paragraphTxtColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 17,
                            color: CustomColors.blueColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
