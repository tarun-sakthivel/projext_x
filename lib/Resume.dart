import 'package:flutter/material.dart';

import 'Home.dart';
import "Interview.dart";
import 'constants.dart';

class Resume extends StatefulWidget {
  

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    DateTime _selectedDate; //SELECTING THE DATE AND TIME

    TextEditingController Nametexteditor = TextEditingController();
    
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Kbackgroundcolor,
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [

            
           Expanded(
            
            flex:1,
            child: Container(
                height:double.infinity,
                decoration: BoxDecoration(color:Ksidebarcolor,
                borderRadius: KMyborder),
                

                //LEFT PART OF ALL WINDOWS
                child:SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectName,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Kgreytextcolor),),
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 57, 57, 57),
                        radius: 40,
                        backgroundImage: AssetImage("assets/icon_assets/User.png"),
                       
                      ),
                      SizedBox(
                        height:10,
                      ),
                      Text("Paarthiban AKA Leo",style:TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight: FontWeight.bold,color:Kgreytextcolor)),
                      Text("Free plan",style:TextStyle(fontFamily: "Inter",fontSize: 10,fontWeight: FontWeight.w300,color:Kgreytextcolor)),
                
                      SizedBox(
                        height:40,
                      ),

                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                          Side_bar_element(startspace:5,name: "Dashboard",imagelink:"assets/icon_assets/home_icon.png",space:45,operation: (){
                          print("Home");
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          }),
                                              /*Side_bar_element(startspace:3,name:"Settings ",imagelink:"assets/icon_assets/settings_icon.png",space:46,operation: (){
                          print(" Setting");
                          setState(() {
                            currentScreen = Interviewtypes();
                          });
                                              }),*/
                          Side_bar_element(startspace:6.5,name:"Developers",imagelink:"assets/icon_assets/dev_icon.png",space:44.5,operation: (){
                          print("Developers");
                           
                                              }),
                          Side_bar_element(startspace:0,name:"Interview",imagelink:"assets/icon_assets/dev_icon.png",space:52.5,operation: (){
                          print("Developers");
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Interview()));
                         
                                              }),
                          Side_bar_element(startspace:0,name:"Resume",imagelink:"assets/icon_assets/resume_icon.png",space:55,operation: (){
                          print("Resume");
                                              }),
                        
                            ],
                          ),
                        ),
                      )
                     
                    ],
                  ),
                ),
                
              ),
           ),
           Expanded(
            flex:4,
            
            child: Container(
              decoration: BoxDecoration(color: Kmainboard,borderRadius: KMyborder),
              child:Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Resume",style: Ktitletextstyle,),
                    Divider(
                      indent:0,
                      endIndent: 0,
                      color: Kgreylinecolor,
                    ),
                    Container(
                      width:double.infinity,
                      color:Colors.cyan,
                      child:SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics:AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             
                            Text("hello",style: Ktitletextstyle,),
                            Text("hello",style: Ktitletextstyle,),
                            Text("hello",style: Ktitletextstyle,),
                            Text("hello",style: Ktitletextstyle,),
                            Text("hello",style: Ktitletextstyle,),

                          ],
                        ),
                      )
                    ),
                  ],
                ),
              )

           ),)
          ]
        )));}}