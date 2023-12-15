import 'package:flutter/material.dart';
import 'package:project_x/Start_interview.dart';

import 'Home.dart';
import 'Resume.dart';
import 'constants.dart';
double screenWidth=0;
class Interview extends StatefulWidget {
  

  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {
  @override
 
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
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
                        backgroundImage: AssetImage("assets/icon_assets/job_user.png"),
                      
                      ),
                      SizedBox(
                        height:10,
                      ),
                      Text(UserName,style:TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight: FontWeight.bold,color:Kgreytextcolor)),
                      Text("Free plan",style:TextStyle(fontFamily: "Inter",fontSize: 10,fontWeight: FontWeight.w300,color:Kgreytextcolor)),
                
                      SizedBox(
                        height:40,
                      ),

                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                          Side_bar_element(startspace:1,name: "Dashboard",imagelink:"assets/icon_assets/home_icon.png",space:45,operation: (){
                          print("Interview");
                          Navigator.pop(context);//POPPING THE CURRENT PAGE AND NAVIGATING TO NEEW
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          }),
                                            
                          Side_bar_element(startspace:6.5,name:"Developers",imagelink:"assets/icon_assets/dev_icon.png",space:44.5,operation: (){
                          print("Developers");
                                              }),
                          Side_bar_element(startspace:0,name:"Interview",imagelink:"assets/icon_assets/tie_side_icon.png",space:52.5,operation: (){
                          print("INterview");
                          setState(() {
                           Navigator.pop(context);
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Interview()));
                          });
                                              }),
                          Side_bar_element(startspace:0,name:"Resume",imagelink:"assets/icon_assets/resume_icon.png",space:55,operation: (){
                          print("Resume");
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Resume()));
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
                height:double.infinity,
                decoration: BoxDecoration(color:Kmainboard,
                borderRadius: KMyborder),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Interview",style:Ktitletextstyle),

          Divider(
           indent: 0,
           endIndent: 0,
           color: Kgreylinecolor,
          ),

          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics:BouncingScrollPhysics() ,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            
                              FeaturesButton(startcolor: Color.fromARGB(255, 242, 229, 95),
                                endcolor:Color.fromARGB(255, 244, 141, 190) ,
                                subtext: "Start your Interview",
                                maintext: "Technology",
                                imagepath:"assets/icon_assets/technology.png",
                                operation: (){
                                    //NAVIGATOR
                                    
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Startinterview()));
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 138, 86, 249),
                                endcolor:Color.fromARGB(255, 89, 86, 253) ,
                                subtext: "Start your Interview",
                                maintext: "Management",
                                imagepath:"assets/icon_assets/managment.png",
                                operation: (){
                                  //NAVIGATOR
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 249, 19, 19),
                                endcolor:Color.fromARGB(255, 249, 70, 167) ,
                                subtext: "Start your Interview",
                                maintext: "Design",
                                imagepath:"assets/icon_assets/design.png",
                                operation: (){
                                  //NAVIGATOR
                                }
                              ),
                              
                          ],
                        ),
                
                      ),
                   
                    
                 
                  ],
                )
              ),
            ),
          )
        ],
      ),
                ),
                
              ),
           ),
          ],
        ),
      )
    );
  }
}

// ignore: must_be_immutable


class FeaturesButton extends StatelessWidget {
  late Color startcolor;
  late Color endcolor;
  late String subtext;
  late String maintext;
  late String imagepath;
  late Function() operation;
  FeaturesButton({
   required this.startcolor,
   required this.endcolor,
   required this.subtext,
   required this.maintext,
   required this.imagepath,
   required this.operation,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:operation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
        child: Container(
          
          width: 400,
          height:150,
          decoration: BoxDecoration(
            
            gradient: LinearGradient(colors: [startcolor, endcolor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,),
          borderRadius: BorderRadius.circular(20),

          
          ),
    
          //content inside the container
          child: Padding(
            //giving padding to the whole row to maintain the text properly
            padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtext,style:TextStyle(fontSize:18,fontWeight: FontWeight.w400,color: Colors.black)),
                    Text(maintext,style:TextStyle(fontSize:32,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 255, 255, 255))),
                  ],
                ),
                Expanded(
                  child: Container(
                
                  ),
                ),
                //container image 
                Image.asset(imagepath),
              ],
            ),
          ),
                  
        ),
      ),
    );
  }
}
