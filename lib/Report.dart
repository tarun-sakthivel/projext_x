import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:project_x/Interview.dart';

import 'Home.dart';
import 'Resume.dart';
import 'constants.dart';
double screenWidth=0;
final List<String> question = ["tell me about yourself","something","something question"];
final List<String> answer = ["I'm a recent graduate with a degree in computer science. During my studies, I focused on software development and completed a couple of internships. I enjoy coding and problem-solving. In my free time, I like to explore new technologies and work on small coding projects",
"something answer","something asnwer 2"];
final List<String> feedback = ["The answer provides a concise overview of your educational background, interests, and experiences. To enhance it, consider incorporating specific achievements or projects from your internships to showcase practical skills. Additionally, mentioning how your skills align with the position you're applying for can make the response more tailored and impactful.",
"feedback1","feedback2"];

class Report extends StatefulWidget {
  

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {

  
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
                        backgroundImage: AssetImage("assets/image_assets/saaran.png"),
                      
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
                          print("Report");
                          Navigator.pop(context);//POPPING THE CURRENT PAGE AND NAVIGATING TO NEEW
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          }),
                                            
                          Side_bar_element(startspace:6.5,name:"Developers",imagelink:"assets/icon_assets/dev_icon.png",space:44.5,operation: (){
                          print("Developers");
                                              }),
                          Side_bar_element(startspace:0,name:"Report",imagelink:"assets/icon_assets/tie_side_icon.png",space:52.5,operation: (){
                          print("Report");
                          setState(() {
                           Navigator.pop(context);
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Report()));
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
                child: Container(
                height: double.infinity,
                
                decoration: BoxDecoration(color: Kmainboard,borderRadius: KMyborder),

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                
                    children: [
                      Row(children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Interview()));

                        }, icon: Icon(Icons.arrow_back_ios_new_outlined,size: 40,),),
                        SizedBox(width: 20,),
                        Text("Report",style: Ktitletextstyle,),

                      
                      
                      ]),
                      Divider(
                        indent: 0,
                        endIndent: 0,
                      ),

                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(borderRadius: KMyborder,color: Kmainboard),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            physics: BouncingScrollPhysics(),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                if (screenWidth  >850)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(width:50),
                                    Expanded(
                                      
                                      child: Image(image: AssetImage("assets/image_assets/reportpage_image.png"))),
                                    SizedBox(width:50),
                                    Expanded(

                                      flex:2,
                                      child: Container(
                                        width:500,
                                        
                                        child: Padding(
                                          padding: const EdgeInsets.only(right:40,left:40,top:10,bottom:10),
                                          child: Text("Thank you for your participation in the interview. It was a pleasure meeting with you and discussing your skills and experiences. Your insights and enthusiasm for the position were greatly appreciated",
                                          style: TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w400,color: Colors.black,fontSize: 25),textAlign: TextAlign.justify,),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height:30,),
                                if (screenWidth  >850)
                                Padding(
                                  padding: const EdgeInsets.only(left:60,bottom:30),
                                  child: Text("Overall analysis",style: Ktitletextstyle,),
                                ),
                                if (screenWidth  >850 )
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(130, 10, 15, 10),
                                      child: percentage_indicator(percentage:0.4,
                                      color:Colors.green,
                                      text:"4/10"),
                                    ),

                                    Expanded(
                                      child: Container(
                                        
                                        
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10,bottom:10,left:30,right:30),
                                          child: Text("Beginning with a score of 4 out of 10, there are clear areas for improvement. Reflect on the feedback and target specific aspects for enhanced future performance. Dedication and focused effort will lead to progress."
                                          ,style: Kreporttextstyle,),
                                        )),
                                    ),
                                    
                                  
                                  ],
                                ),
                                if (screenWidth  >850)
                                SizedBox(height:30),
                                if (screenWidth  >850)
                                Padding(
                                  padding: const EdgeInsets.only(left:60,bottom:30),
                                  child: Text("Details",style: Ktitletextstyle,),
                                ),
                                if (screenWidth  >850 )
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              percentage_indicator(percentage: 0.8, color: Colors.orange, text: "8/10"),
                                              Padding(
                                                padding: const EdgeInsets.only(top:10,bottom:5,left:5,right:5),
                                                child: Text("Confidence",style:Kcommontextstyle),
                                              ),
                                            ],
                                                                          
                                          ),
                                                                          
                                        ),
                                      ),
                                    ),

                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              percentage_indicator(percentage: 0.4, color: const Color.fromARGB(255, 218, 92, 241), text: "4/10"),
                                              Padding(
                                                padding: const EdgeInsets.only(top:10,bottom:5,left:5,right:5),
                                                child: Text("TBD",style:Kcommontextstyle),
                                              ),
                                            ],
                                                                          
                                          ),
                                                                          
                                        ),
                                      ),
                                    ),


                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              percentage_indicator(percentage: 0.6, color: const Color.fromARGB(255, 255, 216, 59), text: "6/10"),
                                              Padding(
                                                padding: const EdgeInsets.only(top:10,bottom:5,left:5,right:5),
                                                child: Text("Fluency",style:Kcommontextstyle),
                                              ),
                                            ],
                                                                          
                                          ),
                                                                          
                                        ),
                                      ),
                                    ),
                                  
                                  ],
                                ),
                                /*Expanded(
                                    child: ListView.builder(
                                      itemCount: question.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(question[index], style: Kcommontextstyle),
                                              SizedBox(height: 5),
                                              Text(answer[index], style: Kcommontextstyle),
                                              SizedBox(height: 5),
                                              Text("FEEDBACK", style: Kcommontextstyle),
                                              SizedBox(height: 5),
                                              Text(feedback[index], style: Kcommontextstyle),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),*/
                                
                                  


                                //IF THE SCREEN WIDTH IS LESSER THAN THE GIVEN VALUE THEN THIS WILL GET EXECUTED
                                if (screenWidth <850)
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,

                                  children: [
                                    SizedBox(height:30),
                                    Image(image: AssetImage("assets/image_assets/reportpage_image.png")),

                                    Container(
                                        height:250,
                                        
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:10,bottom:10,left:22,right:22),
                                          child: Text("Thank you for your participation in the interview. It was a pleasure meeting with you and discussing your skills and experiences. Your insights and enthusiasm for the position were greatly appreciated",
                                          style: TextStyle(fontFamily: "Inter",fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20,),textAlign: TextAlign.justify,),
                                        ),
                                      ),
                                    Text("Overall analysis",style: Ktitletextstyle,),

                                    Padding(
                                      padding: const EdgeInsets.only(top:30),
                                      child: percentage_indicator(percentage:0.4,
                                      color:Colors.green,
                                      text:"4/10"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text("Beginning with a score of 4 out of 10, there are clear areas for improvement. Reflect on the feedback and target specific aspects for enhanced future performance. Dedication and focused effort will lead to progress."
                                            ,style: Kreporttextstyle,textAlign: TextAlign.justify,),
                                    ),
                                    //CONFIDENCE
                                    SizedBox(height:30),
                                    Center(child: Text("Details",style: Ktitletextstyle,)),
                                    SizedBox(height:15),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: percentage_indicator(percentage: 0.8, color: Colors.orange, text: "8/10"),
                                    ),
                                    SizedBox(height:10),
                                    Text("Confidence",style:Kcommontextstyle),


                                    //TBD
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: percentage_indicator(percentage: 0.4, color: const Color.fromARGB(255, 218, 92, 241), text: "4/10"),
                                    ),
                                    SizedBox(height:10),
                                    Text("TBD",style:Kcommontextstyle),

                                    //FLUENCY
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                                      child: percentage_indicator(percentage: 0.6, color: const Color.fromARGB(255, 255, 216, 59), text: "6/10"),
                                    ),
                                    SizedBox(height:10),
                                    Text("Fluency",style:Kcommontextstyle),


                                  ],
                                ),
                                
                                Container(
                                  width:double.infinity,
                                  height:2000,
                                  
                                  child: ListView.builder(
                                  itemCount: question.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom:15,top:15),
                                      child: Container(
                                        color: Kgreycolor_light,
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(question[index], style: TextStyle(fontFamily: "Inter", fontSize: 25, fontWeight: FontWeight.w600)),
                                            SizedBox(height: 10),
                                            Text(answer[index], style: Kcommontextstyle),
                                            SizedBox(height: 20),
                                            Text("FEEDBACK", style: TextStyle(fontFamily: "Inter", fontSize: 25, fontWeight: FontWeight.w600)),
                                            SizedBox(height: 10),
                                            Text(feedback[index], style: Kcommontextstyle),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                                              ),
                                ),
                              ],

                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
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

class percentage_indicator extends StatelessWidget {

  final double percentage;
  final Color color;
  final String text;

  const percentage_indicator({
    super.key,
    required this.percentage,
    required this.color,
    required this.text,
    
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 25.0,
                  percent: percentage,//parameter should be adde in the class call
                  center: new Text(text,style: Kprogressbarnumber,),
                  progressColor: color,
                  animation: true,
                  animationDuration: 1000,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Kprogressbarbackgroundcolor,
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
