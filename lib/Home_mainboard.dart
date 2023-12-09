import "package:flutter/material.dart";
import "package:project_x/constants.dart";


class Homemainboard extends StatefulWidget {
  @override
  _HomemainboardState createState() => _HomemainboardState();
}

class _HomemainboardState extends State<Homemainboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
              color:Colors.grey,

              child:SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:400,
                      width:double.infinity,
                      color:Kgreylinecolor,

                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex:2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Features"),
                                SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                         FeaturesButton(startcolor: Color.fromARGB(255, 249, 19, 19),
                          endcolor:Color.fromARGB(255, 249, 70, 167) ,
                          subtext: "Trending \u{1F525}",
                          maintext: "Jobs News",
                          imagepath:"assets/icon_assets/News.png",
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
                         
            
                         
                          
                        
                        
                        ],
                      ),
                    ),
                                
                              ],
                            )
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                                color:const Color.fromARGB(255, 1, 14, 24),
                          
                              
                            ),
                          )
                        ],

                      ),
                    ),

                    Container(
                      height:550,
                      width:double.infinity,
                      color:Colors.amber,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                      ],
                    )
                    
                  ],
                ),
              )
            )),
         
          
        ],
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
