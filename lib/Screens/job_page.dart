import 'package:flutter/material.dart';

class job extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return jobstate();
  }
}
class jobstate extends State<job>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Job"),
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