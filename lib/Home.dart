import 'package:flutter/material.dart';
import 'package:project_x/Resume.dart';

import 'Interview.dart';
import 'constants.dart';
double screenWidth=0;
class Home extends StatefulWidget {
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
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
                child: SingleChildScrollView(
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
                      Text( UserName,style:TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight: FontWeight.bold,color:Kgreytextcolor)),
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

            //FIRST LINE OF THE WINDOW (NAME OF THE WINDOWS PROFILE BUTTON)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Dashboard",style: TextStyle(color: Kblacktextcolor,
                fontFamily: "Inter",fontSize: 30,fontWeight: FontWeight.w600),),
              
              
              /* Container(
                  height: 50,
                  width:150,
                  decoration: BoxDecoration(
                    color: Kgreycolor_dark,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(5.0),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            
                          ),
                        ),
                      Container(
                        
                        child: Text(
                      "sdgdfdfagfdfgffga",
                      maxLines: 1, // Set the maximum number of lines
                      overflow: TextOverflow.ellipsis,),
                                ),
                                          
                        
                      ],
                    ),
                  )
                )
              */],
            ),
            Divider(
            indent: 0,
            endIndent: 0,
            color: Kgreylinecolor,
            ),
            
            Expanded(
              child: Container(
                height:double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Features",style:Kcommontextstyle),
                        SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            
                              FeaturesButton(startcolor: Color.fromARGB(255, 242, 229, 95),
                                endcolor:Color.fromARGB(255, 244, 141, 190) ,
                                subtext: "Find Your",
                                maintext: "Reports",
                                imagepath:"assets/icon_assets/report.png",
                                operation: (){
                                    //NAVIGATOR
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 138, 86, 249),
                                endcolor:Color.fromARGB(255, 89, 86, 253) ,
                                subtext: "Find Your",
                                maintext: "Jobs",
                                imagepath:"assets/icon_assets/job_user.png",
                                operation: (){
                                  //NAVIGATOR
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 249, 19, 19),
                                endcolor:Color.fromARGB(255, 249, 70, 167) ,
                                subtext: "Trending \u{1F525}",
                                maintext: "Jobs News",
                                imagepath:"assets/icon_assets/News.png",
                                operation: (){
                                  //NAVIGATOR
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 138, 86, 249),
                                endcolor:Color.fromARGB(255, 89, 86, 253) ,
                                subtext: "Find Your",
                                maintext: "Jobs",
                                imagepath:"assets/icon_assets/job_user.png",
                                operation: (){
                                  //NAVIGATOR
                                }
                              ),
                              FeaturesButton(startcolor: Color.fromARGB(255, 242, 229, 95),
                                endcolor:Color.fromARGB(255, 244, 141, 190) ,
                                subtext: "Find Your",
                                maintext: "Reports",
                                imagepath:"assets/icon_assets/report.png",
                                operation: (){
                                    //NAVIGATOR
                                }
                              ),
                          ],
                        ),
                
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10,bottom:10),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[ 
                                      Text("Practice",style:Kcommontextstyle),
                                      GestureDetector(
                                        onTap:(){
                                          Navigator.pop(context);
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Interview()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                                          child: Container(
                                            
                                            width: 800,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              
                                              gradient: LinearGradient(colors: [Color.fromARGB(255, 249, 19, 19), Color.fromARGB(255, 249, 70, 167)],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            stops: [0.0, 1.0],
                                            tileMode: TileMode.clamp,),
                                            borderRadius: KMyborder,
                                                          
                                            
                                            ),
                                      
                                            //content inside the container
                                            child:screenWidth > 600 ?  Padding(
                                              //giving padding to the whole row to maintain the text properly
                                              padding: const EdgeInsets.fromLTRB(25, 18, 25, 18),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Start Your",style:TextStyle(fontFamily:"Inter" ,fontSize:30,fontWeight: FontWeight.w400,color: Colors.black)),
                                                      Text("Interview",style:TextStyle(fontFamily:"Inter",fontSize:50,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 255, 255, 255))),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                  
                                                    ),
                                                  ),
                                                  //container image 
                                                  Image.asset("assets/icon_assets/tie.png"),
                                                ],
                                              ),
                                            ):Image.asset("assets/icon_assets/tie.png"),
                                                    
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Your Progress",style:Kcommontextstyle),
                                      Container(
                                        decoration: BoxDecoration(color: Kgreycolor_light,borderRadius: KMyborder,
                                        image: DecorationImage(image: AssetImage("assets/image_assets/error404.png"))),
                                        
                                        height:400,
                                        width:800,
                                      ),
                                      
                                      ]
                                  ),
                                ),
                               
                            
                            ],
                          ),
                        ),
                      ),
                      
                      
                    ],
                  ),
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
          
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            
            gradient: LinearGradient(colors: [startcolor, endcolor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,),
          borderRadius: KMyborder,

          
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
                    Text(subtext,style:TextStyle(fontFamily:"Inter" ,fontSize:18,fontWeight: FontWeight.w400,color: Colors.black)),
                    Text(maintext,style:TextStyle(fontFamily:"Inter",fontSize:32,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 255, 255, 255))),
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
