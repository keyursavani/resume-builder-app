import 'package:flutter/material.dart';

class education extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return educationstate();
  }
}
class educationstate extends State<education>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
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