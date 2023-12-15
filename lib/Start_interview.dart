import 'package:camera/camera.dart';
import  "package:flutter/material.dart";
import "package:project_x/Report.dart";

import "constants.dart";


class Startinterview extends StatefulWidget {
  const Startinterview({super.key});

  @override
  State<Startinterview> createState() => _StartinterviewState();
}

class _StartinterviewState extends State<Startinterview> {
  
  
  @override
  void initState(){
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    
  }



  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kbackgroundcolor,
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
              
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
                          Navigator.pop(context);

                        }, icon: Icon(Icons.arrow_back_ios_new_outlined,size: 40,),),
                        SizedBox(width: 20,),
                        Text("Interview",style: Ktitletextstyle,),

                      
                      
                      ]),
                      Divider(
                        indent: 0,
                        endIndent: 0,
                      ),

                      //video container
                      Expanded(
                        child: Container(
                          child: CameraPage(),
                          
                        ),
                      ),
                      SizedBox(
                        height:30
                      ),            //HERE THE VIDEO CONTAINER SHOUL BE THERE
                      Center(
                        child: ElevatedButton(
                                    
                                    style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 211, 45, 4),
                                    minimumSize: Size(150, 80),
                                    onSurface: Colors.yellow,),
                                    onPressed: ()async{
                                     Navigator.pop(context);
                                     Navigator.push(context, MaterialPageRoute(builder: ((context) => Report())));
                                     
                                
                                
                                  },
                                  
                                child: Text("Stop",style: TextStyle(fontFamily: "Inter",
                                  fontSize: 20,fontWeight: FontWeight.w600,
                                  color:Colors.white),)),
                      ),
                              
                    ],
                  ),
                ),
                
              ),
            )));
  }
}

class CameraPage extends StatefulWidget {
  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  
  late CameraController cameraController ;

 @override
void initState() {
  super.initState();
  initializeCamera();
}
Future<void> initializeCamera() async {
  try {
    print("=====================================================");
    print("checking the aviable cameras");
    final List<CameraDescription> cameras = await availableCameras();
    print("hi");
    print(cameras);
    final cameraController =
        CameraController(cameras.first, ResolutionPreset.medium);
    await cameraController.initialize();
    // You can dispose the controller here if needed
    // cameraController.dispose();
  } catch (e) {
    print("Error initializing camera: $e");
  }
}


  @override

  
void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: CameraPreview(cameraController!),
            ),
            // Your other widgets here
          ],
        ),
      ),
    );
  }
}
