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
  late SharedPreferences pref;
  var  name;
  var address;
  var  email;
  var  phone;
  var objective;
  var companyname;
  var jobtitle;
  var startdate;
  var enddate;
  var details;
  var  degree;
  var  university;
  var  grade;
  var  year;
  var  ptitle;
  var  description;
  var  skills;
  var interest;
  var language;
  var jobdescription;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      name = pref.getString('name')!;
      address = pref.getString('address')!;
      email = pref.getString('email')!;
      phone = pref.getString('phone')!;
      objective = pref.getString('objective')!;
      companyname = pref.getString('companyname')!;
      jobtitle = pref.getString('jobtitle')!;
      startdate = pref.getString('startdate')!;
      enddate = pref.getString('enddate')!;
      details = pref.getString('details')!;
      degree = pref.getString('degree')!;
      university = pref.getString('university')!;
      grade = pref.getString('grade')!;
      year = pref.getString('year')!;
      ptitle = pref.getString('ptitle')!;
      description = pref.getString('description')!;
      skills = pref.getString('skills')!;
      interest = pref.getString('interest')!;
      language = pref.getString('language')!;
      jobdescription = pref.getString('jobdescription')!;
    });
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 10,left: 10 ,right: 10,bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text("$name" ,style: TextStyle(
                        color: Colors.black,
                        fontSize: 23
                    ),),
                    SizedBox(height: 3,),
                    Text("$address" ,style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 3,),
                    Text("$email" ,style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                    ),),
                    SizedBox(height: 3,),
                    Text("$phone" ,style: TextStyle(
                      color: Colors.black54,
                      fontSize: 17,
                    ),),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Objective" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$objective" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Experience" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$companyname" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$jobtitle" ,style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("$startdate" ,style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                 SizedBox(width: 15,),
                 Text("-" ,style: TextStyle(
                   color: Colors.black,
                   fontSize: 20
                 ),),
                  SizedBox(width: 15,),
                  Text("$enddate" ,style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Text("$details" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Education" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$university" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$degree" ,style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),),
              SizedBox(height: 5,),
              Text("$grade" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),
              SizedBox(height: 5,),
              Text("$year" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Skills" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$skills" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,

              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Projects" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$ptitle" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$description" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Interests" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$interest" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Languages" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$language" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 5 ,right: 0 ,top: 0 ,bottom: 0),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ), Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 13,),
              Text("Job Description" ,style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Text("$jobdescription" ,style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),),
            ],
          ),
        ),
      )
    );
  }
}