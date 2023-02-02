import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class experience extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return experiencestate();
  }
}
class experiencestate extends State<experience>{

  late SharedPreferences pref;

  TextEditingController companyname = TextEditingController();
  TextEditingController jobtitle = TextEditingController();
  TextEditingController startdate = TextEditingController();
  TextEditingController enddate = TextEditingController();
  TextEditingController details = TextEditingController();

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
    companyname.dispose();
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
        title: Text("Experience"),
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
              Text("Company Name" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: companyname,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Company Name",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Job Title" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: jobtitle,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Job Title",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Start Date" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: startdate,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Start Date",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("End Date" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 50,
                child:TextField(
                  controller: enddate,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "End Data",
                    labelStyle: textStyle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Text("Details" , style: TextStyle(
                color: Colors.black54,
                fontSize:15,
              ),),
              SizedBox(height: 7,),
              Container(
                height: 100,
                child:TextField(
                  controller: details,
                  style: textStyle2,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    border: enabledBorder,
                    focusedBorder: enabledBorder,
                    labelText: "Details",
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
                      String usercompanyname = companyname.text;
                      String userjobtitle = jobtitle.text;
                      String userstartdate = startdate.text;
                      String userenddate = enddate.text;
                      String userdetails = details.text;
                      if (companyname != null && jobtitle != null && startdate != null && enddate != null && details != null ) {
                        pref.setString('companyname', usercompanyname);
                        pref.setString('jobtitle', userjobtitle);
                        pref.setString('startdate', userstartdate);
                        pref.setString('enddate', userenddate);
                        pref.setString('details', userdetails);
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