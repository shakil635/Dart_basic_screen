import 'package:flutter/material.dart';
import 'dart:math' as math;

class ImmutableWidget extends StatelessWidget { //son class ImmutableWidget father class StatelessWidget
  const ImmutableWidget({super.key});        //ImmutableWidget akta constrauctor super er madhome father class er key k call kora hoice

  @override                                //@override er madhome father class er property/bluprint use korteci
  Widget build(BuildContext context) {    //build method ja mather class er blue print son class e use kora hocce
    return Container(                    //Container class er constructor k call kora hoice
      decoration: const BoxDecoration(   // Container constructor er modde thake in..List gula call kora hoice like decoration, color etc
        color: Colors.green,
      ),
      foregroundDecoration: BoxDecoration(  //foregroundDecoration er modde BoxDecoration constructor k call kora hoice and Boxdecoration er in..List gula call kora hoice
          backgroundBlendMode: BlendMode.colorBurn,// brackground colors k r o beshi shado or light  korar jonno
          gradient: LinearGradient(         // multiple colors use korar jonno top bottom  etc
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xAA0d6144),
                Color(0x00000000),
                Color(0xAA0d6123),
              ])),
      child: Center(                 // Center class er center constructor k call kora hoice and constructor er in..List gula call kora hoice
        child: Transform.rotate(
          angle: 180 / math.pi,
          child: Container(        // Container class er constructor k call kora hoice and Constructor er kisu in..List k call kora hoice
              width: 250,
              height: 250,
              decoration: BoxDecoration( // boxDecoration er kisu in ..List er madhome desing er colors,shadow neya hocce
                  color: Colors.purple,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withAlpha(120),
                      spreadRadius: 4,
                      blurRadius: 15,
                      offset: Offset.fromDirection(1.0, 30),
                    )
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: _buildShinyCircle(),  // _buildShinyCircle function k call kora hoice
                //  Container(
                //    color: Colors.deepPurpleAccent,
                //  ),
                //ColoredBox(color: Colors.black,) also use for only color
              )),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {            // _buildShinyCircle ak functon creat kora hoice and ai function return kortese akta Container
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            center: Alignment(-0.3, -0.5),
          ),
          boxShadow: [BoxShadow(blurRadius: 20)]),
    );
  }
}
