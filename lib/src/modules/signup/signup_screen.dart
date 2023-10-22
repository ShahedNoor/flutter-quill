import 'package:flutter/material.dart';
import 'package:quill/src/data/utils/colors.dart';
import 'package:quill/src/modules/empty/empty_screen.dart';
import 'package:quill/src/modules/home/home_screen.dart';
import 'package:quill/src/modules/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        Icons.email_outlined,
                        color: CustomColors.blueColor,
                      ),
                    ),
                    labelText: "Email",
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
                            builder: (context) =>
                                EmptyScreen())); // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                  },
                  child: Text(
                    "SignUp",
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
                      "Already Have an Account!",
                      style: TextStyle(
                          fontSize: 17, color: CustomColors.paragraphTxtColor),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "LOGIN",
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
