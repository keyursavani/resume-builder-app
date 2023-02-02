import 'package:flutter/material.dart';
import 'package:resume_builder_app/Screens/view_cv_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class personaldetailspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return personaldetailspagestate();
  }
}
class personaldetailspagestate extends State<personaldetailspage>{

  late SharedPreferences pref;

  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
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
    name.dispose();
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
       title: Text("Personal Details"),
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
             Text("Name" , style: TextStyle(
               color: Colors.black54,
               fontSize:15,
             ),),
           SizedBox(height: 7,),
           Container(
           height: 50,
           child:TextField(
                   controller: name,
                   style: textStyle2,
                   cursorColor: Colors.black45,
                   decoration: InputDecoration(
                     enabledBorder: enabledBorder,
                     border: enabledBorder,
                     focusedBorder: enabledBorder,
                     labelText: "User Name",
                     labelStyle: textStyle,
                     floatingLabelBehavior: FloatingLabelBehavior.never,
                   ),
                 ),
               ),
             SizedBox(height: 15,),
             Text("Address" , style: TextStyle(
               color: Colors.black54,
               fontSize:15,
             ),),
             SizedBox(height: 7,),
             Container(
               height: 50,
               child:TextField(
                 controller: address,
                 style: textStyle2,
                 cursorColor: Colors.black45,
                 decoration: InputDecoration(
                   enabledBorder: enabledBorder,
                   border: enabledBorder,
                   focusedBorder: enabledBorder,
                   labelText: "Address",
                   labelStyle: textStyle,
                   floatingLabelBehavior: FloatingLabelBehavior.never,
                 ),
               ),
             ),
             SizedBox(height: 15,),
             Text("Email" , style: TextStyle(
               color: Colors.black54,
               fontSize:15,
             ),),
             SizedBox(height: 7,),
             Container(
               height: 50,
               child:TextField(
                 controller: email,
                 style: textStyle2,
                 cursorColor: Colors.black45,
                 decoration: InputDecoration(
                   enabledBorder: enabledBorder,
                   border: enabledBorder,
                   focusedBorder: enabledBorder,
                   labelText: "Email",
                   labelStyle: textStyle,
                   floatingLabelBehavior: FloatingLabelBehavior.never,
                 ),
               ),
             ),
             SizedBox(height: 15,),
             Text("Phone" , style: TextStyle(
               color: Colors.black54,
               fontSize:15,
             ),),
             SizedBox(height: 7,),
             Container(
               height: 50,
               child:TextField(
                 controller: phone,
                 style: textStyle2,
                 cursorColor: Colors.black45,
                 decoration: InputDecoration(
                   enabledBorder: enabledBorder,
                   border: enabledBorder,
                   focusedBorder: enabledBorder,
                   labelText: "Phone",
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
                     String username = name.text;
                     String useraddress = address.text;
                     String useremail = email.text;
                     String userphone = phone.text;
                     if (name != null && address != null && email != null && phone != null) {
                       pref.setString('name', username);
                       pref.setString('address', useraddress);
                       pref.setString('email', useremail);
                       pref.setString('phone', userphone);
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