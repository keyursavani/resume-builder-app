import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class viewcv extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return viewcvstate();
  }
}
class viewcvstate extends State<viewcv>{
  late SharedPreferences sharedPreferences;
   late String? name = sharedPreferences.getString("username");
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("View Your CV"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text("Name :-"),
      ),
    );
  }
}