import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class projects extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return projectsstate();
  }
}
class projectsstate extends State<projects>{

  late SharedPreferences pref;

  TextEditingController ptitle = TextEditingController();
  TextEditingController description = TextEditingController();
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
    ptitle.dispose();
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
        title: Text("Projects"),
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
              Text("Title" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 60,
                child:TextField(
                  controller: ptitle,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Title",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Description" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 100,
                child:TextField(
                  controller: description,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Description",
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
                      String userptitle = ptitle.text;
                      String userdescription = description.text;
                      if (ptitle != null && description != null ) {
                        pref.setString('ptitle', userptitle);
                        pref.setString('description', userdescription);
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