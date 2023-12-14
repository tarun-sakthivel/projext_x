import 'package:flutter/material.dart';
import 'package:project_x/interviewPage.dart';
import 'package:project_x/managementPage.dart';
import 'constants.dart';

class techinterviewPage extends StatefulWidget {
  const techinterviewPage({super.key});

  @override
  State<techinterviewPage> createState() => _techinterviewPageState();
}

class _techinterviewPageState extends State<techinterviewPage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Kbackgroundcolor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Ksidebarcolor, borderRadius: KMyborder),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectName,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Kgreytextcolor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 57, 57, 57),
                          radius: 40,
                          backgroundImage:
                              AssetImage("assets/image_assets/user.png"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(UserName,
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Kgreytextcolor)),
                        Text("Free plan",
                            style: TextStyle(
                                fontFamily: "Inter",
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Kgreytextcolor)),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Side_bar_element(
                                    startspace: 1,
                                    name: "Dashboard",
                                    imagelink:
                                        "assets/icon_assets/home_icon.png",
                                    space: 45,
                                    operation: () {
                                      print("Interview");
                                      Navigator.pop(
                                          context); //POPPING THE CURRENT PAGE AND NAVIGATING TO NEEW
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Placeholder())); //To route to the home page
                                    }),
                                Side_bar_element(
                                    startspace: 6.5,
                                    name: "Developers",
                                    imagelink:
                                        "assets/icon_assets/dev_icon.png",
                                    space: 44.5,
                                    operation: () {
                                      print("Developers");
                                    }),
                                Side_bar_element(
                                    startspace: 0,
                                    name: "Interview",
                                    imagelink:
                                        "assets/icon_assets/tie_side_icon.png",
                                    space: 52.5,
                                    operation: () {
                                      print("INterview");
                                      setState(() {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const interviewPage())); //this is routed to the tech interview page
                                      });
                                    }),
                                Side_bar_element(
                                    startspace: 0,
                                    name: "Resume",
                                    imagelink:
                                        "assets/icon_assets/resume_icon.png",
                                    space: 55,
                                    operation: () {
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
                flex: 4,
                child: Container(
                  height: double.infinity,
                  decoration:
                      BoxDecoration(color: Kmainboard, borderRadius: KMyborder),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          screenwidth < 400
                              ? const Text('ERROR')
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Flexible>[
                                    const Flexible(
                                      child: SizedBox(
                                        height: 60,
                                        width: 900,
                                        child: Text(
                                          'Technology Interview',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),

                                    Flexible(
                                      child: Container(
                                        //Container for the userprofile dropdown box
                                        height: 55,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            color: const Color.fromARGB(
                                                255, 236, 244, 244)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Color.fromRGBO(93, 93, 93, 1),
                                            ),
                                            Text(
                                              UserName,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            PopupMenuButton(
                                              itemBuilder: (context) => [
                                                const PopupMenuItem(
                                                  child: Column(
                                                    children: <Widget>[
                                                      //Items to add in the dropdown box
                                                      Icon(
                                                        Icons.downhill_skiing,
                                                        size: 24,
                                                        color: Color.fromRGBO(
                                                            93, 93, 93, 1),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                              child: const Icon(
                                                  Icons
                                                      .keyboard_arrow_down_outlined,
                                                  size: 38,
                                                  color: Color.fromRGBO(
                                                      93, 93, 93, 1)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                    //This the place to place a dropdown box
                                  ],
                                ),
                          Container(
                            child: const Divider(
                              //This is used for creating a divider line
                              indent: 0,
                              endIndent: 0,
                              color: Color.fromARGB(255, 194, 194, 194),
                            ),
                          ),
                          const SizedBox(height: 10),
                          screenwidth < 300
                              ? const Text('Expand to \n know more')
                              : Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Row for the image asset and the overview paragraph
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(
                                        child: SizedBox(
                                          height: 330,
                                          width: 513,
                                          child: Image(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                  'assets/image_assets/techpgimage.png')),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 120,
                                      ),

                                      screenwidth < 872
                                          ? const Column()
                                          : Column(
                                              //Column created for the overview headin g and the followin g paragraph
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Overview',
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 34,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Kblacktextcolor),
                                                ),
                                                const SizedBox(
                                                  height: 50,
                                                ),
                                                Text(
                                                  'Elevate your tech interviews with our cutting-edge\n AI interview app! Seamlessly blend general questions,\n fundamental projects, and technical inquiries to assess\n candidates skills comprehensively. Revolutionize \n       your hiring process for a tech-savvy future.',
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Kblacktextcolor),
                                                ),
                                                const SizedBox(
                                                  height: 45,
                                                ),
                                              ],
                                            )
                                    ],
                                  ),
                                ),
                          const SizedBox(
                            height: 55,
                          ),
                          const Text(
                            'Choose the interview type ?',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          screenwidth < 830
                              ? const Column()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      //This is the conatiner that contains navigator button for the text based interview type
                                      child: MyElevatedButton(
                                        onPressed: () {},
                                        width:
                                            260, //Place to set the router to the text based page
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Text Based',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Image(
                                                image: AssetImage(
                                                    'assets/image_assets/text.png'))
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      //space between the two buttons
                                      width: 50,
                                    ),
                                    Container(
                                      //This is the container that contains the button for the voice and text navigator button
                                      child: MyElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const managementPage()));
                                        },
                                        width:
                                            260, //Place to set the router to the voice and text based page
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Video and Voice \n        based',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Inter',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Image(
                                                image: AssetImage(
                                                    'assets/image_assets/voice.png'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          const SizedBox(
                            height: 15,
                          ),
                          screenwidth < 840
                              ? const Column()
                              : const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 300,
                                    ),
                                    Text(
                                      'Recommended',
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontFamily: 'Inter',
                                          color:
                                              Color.fromRGBO(157, 157, 157, 1)),
                                    ),
                                  ],
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 100.0,
    this.gradient = const LinearGradient(colors: [
      Color.fromRGBO(225, 74, 85, 1),
      Color.fromRGBO(255, 56, 175, 1)
    ]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(10);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromRGBO(255, 74, 85, 1),
              Color.fromRGBO(255, 56, 175, 1)
            ]),
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
