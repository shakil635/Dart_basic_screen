import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text_layout extends StatelessWidget {  //son class Text_layout and father class StatelessWidget
  const Text_layout({super.key});    //Text_layout constructor 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,  //crossAxisAlignment use for column all text start left side 
      children: [
        Text(
          "Hello, World!",
          style: GoogleFonts.leckerliOne(fontSize: 40),//use google front 
        ),
        Text(
          "Text can  wrap without issue",
          style: Theme.of(context).textTheme.headlineLarge, // use for text size change
        ),
        const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing
elit. Etiam at mauris massa. Suspendisse potenti. Aenean aliquet eu
nisl vitae tempus."""),
        const Divider(),      
        RichText(                      //use this widget for one line text diffirent size
            text: const TextSpan(
                text: "Flutter text is",
                style: TextStyle(fontSize: 22, color: Colors.black),
                children: <TextSpan>[
              TextSpan(
                  text: "really",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                  children: [
                    TextSpan(
                        text: "Powerful",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.double,
                          fontSize: 40,
                        ))
                  ]),
            ])),
      ],
    );
  }
}
