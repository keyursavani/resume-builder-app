import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class education extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return educationstate();
  }
}
class educationstate extends State<education>{
  @override
  late SharedPreferences pref;

  TextEditingController degree = TextEditingController();
  TextEditingController university = TextEditingController();
  TextEditingController grade = TextEditingController();
  TextEditingController year = TextEditingController();

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
    degree.dispose();
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 30,left: 15 ,right: 15,bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Degree" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: degree,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Degree",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("University" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: university,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "University",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Grade" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: grade,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Grade",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Year" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: year,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Year",
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
                      String userdegree = degree.text;
                      String useruniversity = university.text;
                      String usergrade = grade.text;
                      String useryear = year.text;
                      if (degree != null && university != null && grade != null && year != null ) {
                        pref.setString('degree', userdegree);
                        pref.setString('university', useruniversity);
                        pref.setString('grade', usergrade);
                        pref.setString('year', useryear);
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