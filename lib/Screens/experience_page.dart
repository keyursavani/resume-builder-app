import 'package:flutter/material.dart';

class experience extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return experiencestate();
  }
}
class experiencestate extends State<experience>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Experience"),
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