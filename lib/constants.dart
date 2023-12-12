import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
String UserName = "Tarun";
String projectName  = "ProjectX";
Color  Kbackgroundcolor = const Color.fromARGB(255, 29, 29, 29);
Color  Ksidebarcolor =  const Color.fromARGB(255, 29, 29, 29);
Color  Kmainboard = Color.fromARGB(255, 255, 255, 255);
Color Kblacktextcolor = const Color.fromARGB(255, 29, 29, 29);
Color Kgreycolor_dark = Color.fromARGB(255, 161, 161, 161);
Color Kgreycolor_light = const Color.fromARGB(255, 242, 246, 249);
Color Kgreylinecolor = const Color.fromARGB(255, 194, 194, 194);
Color Kgreytextcolor = const Color.fromARGB(255, 186, 171, 171);
TextStyle Ktitletextstyle = const TextStyle(fontFamily: "Inter",fontSize: 30,fontWeight: FontWeight.bold);
TextStyle Kcommontextstyle = const TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight:FontWeight.w500);
TextStyle Kresumetextstyle = const TextStyle(fontFamily: "Inter",fontSize: 20,fontWeight:FontWeight.w800,color: Color.fromARGB(255, 104, 103, 103));

//profile image for the user 
//picking the image from the file using the some modules
final ImagePicker _picker = ImagePicker();


chooseImages()async{
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image !=null){
      
        final File _image = File(image.path);
     
    }}
BorderRadius KMyborder = BorderRadius.circular(10);




class Side_bar_element extends StatelessWidget {

  late String name;
  late String imagelink;
  late double space;
  late double startspace;
  late Function() operation;
  Side_bar_element({required this.name,
   required this .imagelink,
   required this.space,
   required this.startspace,
   required this.operation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: operation,
        child: Container(
          
          color: Colors.transparent,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              SizedBox(
                width:startspace
              ),
             Image(image: AssetImage(imagelink)),
             SizedBox(
              width:space,
             ),
             Text(name,style:TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color:Kgreytextcolor,fontFamily: "Inter"))
          ],),
        ),
      ),
    );
  }
}