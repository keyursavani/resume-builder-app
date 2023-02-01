import 'package:flutter/material.dart';
import 'package:resume_builder_app/Screens/education_page.dart';
import 'package:resume_builder_app/Screens/experience_page.dart';
import 'package:resume_builder_app/Screens/interested_page.dart';
import 'package:resume_builder_app/Screens/job_page.dart';
import 'package:resume_builder_app/Screens/objective_page.dart';
import 'package:resume_builder_app/Screens/personal_details_page.dart';
import 'package:resume_builder_app/Screens/projects_page.dart';

import 'Screens/launguage_page.dart';
import 'Screens/skills_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create Yoour Resume"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return personaldetailspage();
                      })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                        padding:
                            const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                children: [
                                  Icon(Icons.person ,color: Colors.indigoAccent,size: 30,),
                                  SizedBox(width: 7,),
                                  Text("Personal Details" ,style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),),
                                ],
                            ),
                            Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                          ],
                        ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                            return education();
                          })
                      );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.school ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Education" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return experience();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.work_history ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Experience" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return skills();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.interpreter_mode_sharp ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Skills" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return objective();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.emoji_objects_sharp ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Objective" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return projects();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.work ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Projects" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return language();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.language ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Lauguage" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return job();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.work_history_rounded ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Job" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context){
                          return interested();
                        })
                    );
                  },
                  child: Card(
                    elevation: 8,
                    borderOnForeground: true,
                    shadowColor: Color(0x268A959E),
                    child: Container(
                      padding:
                      const EdgeInsets.only(top: 15, left: 20, bottom: 15 ,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.interests ,color: Colors.indigoAccent,size: 30,),
                              SizedBox(width: 7,),
                              Text("Interested" ,style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            ],
                          ),
                          Icon(Icons.navigate_next ,size: 25 ,color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 15 ,left: 20 ,right: 20 ,bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black54,
                      ),
                      child: Text("View CV",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
