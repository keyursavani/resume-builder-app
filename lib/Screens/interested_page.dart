import 'package:flutter/material.dart';

class interested extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return interestedstate();
  }
}
class interestedstate extends State<interested>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Interested"),
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