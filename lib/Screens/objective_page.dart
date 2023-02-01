import 'package:flutter/material.dart';

class objective extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return objectivestate();
  }
}
class objectivestate extends State<objective>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Objective"),
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