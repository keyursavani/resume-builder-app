import 'package:flutter/material.dart';

class language extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return languagestate();
  }
}
class languagestate extends State<language>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
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