import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class personaldetailspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return personaldetailspagestate();
  }
}
class personaldetailspagestate extends State<personaldetailspage>{

  late SharedPreferences sharedPreferences;

  final name = TextEditingController();
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
              Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: InkWell(
                  onTap: (){
                    sharedPreferences.setString("name",name.text);
                    sharedPreferences.commit();
                    if(name != " "){
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15 ,left: 20 ,right: 20 ,bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.black54,
                    ),
                    child: Text("sava",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
           ],
         ),
       ),
     ),
   );
  }
}