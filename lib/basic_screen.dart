import 'package:flutter/material.dart';

import 'text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(                    //ToDo
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Wellcome to Flutter"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, children: [
        Semantics(
          image: true,
          label: "A beautiful beach",
          child: Image.asset("assete/photo.jpg"),
        ),

        //    AspectRatio(
        //   aspectRatio: 1.0,
        //   child: ImmutableWidget(),
        // ),
        Text_layout(),
      ]),
      drawer: Drawer(
        child: Container(
          color: Colors.lightGreen,
          child: const Center(child: Text("Drawer")),
        ),
      ),
    );
  }
}
