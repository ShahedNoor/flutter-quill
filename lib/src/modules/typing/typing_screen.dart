import 'package:flutter/material.dart';
import 'package:quill/src/data/utils/colors.dart';
import 'package:quill/src/modules/typing/local_widgets/header.dart';

class TypingScreen extends StatefulWidget {
  const TypingScreen({super.key});

  @override
  State<TypingScreen> createState() => _TypingScreenState();
}

class _TypingScreenState extends State<TypingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: CustomColors.myPrimaryColor
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.check_circle_outline), label: "To-do"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image_outlined), label: "Image"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt_outlined), label: "Take Photo"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.font_download_outlined), label: "Format"),
            ],
            selectedItemColor: CustomColors.blueColor,
            unselectedItemColor: CustomColors.blueColor,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Header(),
              //   Date time & bookmark icon
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DateTime.now().toString()),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_border_outlined),
                    )
                  ],
                ),
              ),
              //   Date time & bookmark icon end
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Title", hintText: "Note title"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Type Something...",
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                    textInputAction: TextInputAction.newline,
                    maxLines: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
