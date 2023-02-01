import 'package:flutter/material.dart';

class skills extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return skillsstate();
  }
}
class skillsstate extends State<skills>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}