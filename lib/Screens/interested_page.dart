import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class interested extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return interestedstate();
  }
}
class interestedstate extends State<interested>{

  late SharedPreferences pref;

  TextEditingController interest = TextEditingController();

  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    pref = await SharedPreferences.getInstance();
  }
  @override
  void dispose() {
    interest.dispose();
    super.dispose();
  }

  TextStyle textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black45
  );
  TextStyle textStyle2 = TextStyle(
      fontSize: 17,
      color: Colors.black
  );
  Color  cursorColor= Colors.black45;

  final enabledBorder =  OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10),),
    borderSide: BorderSide(color: Colors.black54 ),
  );

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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30,left: 15 ,right: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Interests" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 100,
                child:TextField(
                  controller: interest,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Interests",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 10, right: 10),
                  child: InkWell(
                    onTap: () {
                      String userinterest = interest.text;
                      if (interest != null) {
                        pref.setString('interest', userinterest);
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 12, left: 30, right: 30),
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          color: Colors.black54),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}