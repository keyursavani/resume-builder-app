import 'package:flutter/material.dart';

class projects extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return projectsstate();
  }
}
class projectsstate extends State<projects>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
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