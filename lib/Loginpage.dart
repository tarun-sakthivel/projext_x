import 'package:flutter/material.dart';
import 'constants.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Kbackgroundcolor,
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Ksidebarcolor, borderRadius: KMyborder),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/image_assets/grow.png'),
                    ),
                    Text(
                      'PRACTICE',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 147, 132, 1)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 120,
                      width: 290,
                      child: Text(
                        'Practice transforms potential into prowess, turning dreams into reality.Craftsmanship is born from a relentless dance with improvement. As we step into interviews, ',
                        style: TextStyle(
                            wordSpacing: 2,
                            fontFamily: 'Inter',
                            fontSize: 12,
                            color: Color.fromRGBO(182, 178, 178, 1),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        " greatness is cultivated through \n          intentional practice.",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              255,
                              147,
                              132,
                              1,
                            ),
                            fontFamily: 'Inter',
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: double.infinity,
                decoration:
                    BoxDecoration(color: Kmainboard, borderRadius: KMyborder),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Image(
                        image: AssetImage('assets/image_assets/interview.png')),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'if',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(225, 255, 114, 94)),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '(You have an account?){',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Inter"),
                          ),
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(232, 232, 232, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const SizedBox(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 355,
                        ),
                        const Text(
                          '}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 355,
                        ),
                        Text(
                          'else',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 114, 94, 1)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '{',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(232, 232, 232, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const SizedBox(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 355,
                        ),
                        const Text(
                          '}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}