import 'package:flutter/material.dart';
import 'package:project_x/constants.dart';
import 'package:project_x/techinterviewPage.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String? email;
  String? password;
  String? name;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Kbackgroundcolor,
        body: Row(
          children: [
            Expanded(
              //container for the left side of the page
              flex: 2,
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Ksidebarcolor, borderRadius: KMyborder),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Image(
                      height: 320,
                      width: 260,
                      image: AssetImage('assets/image_assets/INTERVIEW2.png'),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    screenwidth < 200
                        ? const Text(
                            ' ',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        : const Text(
                            'INTERVIEW',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 147, 132, 1)),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 120,
                      width: 290,
                      child: screenwidth < 200
                          ? const Text(
                              ' ',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          : const Expanded(
                              child: Text(
                                'Interviews, where practice breeds prowess. Elevate with intentional greatness. Craftsmanship honed in relentless pursuit. Dreams to reality, one answer at a time. Unleash your potential through deliberate practice. ',
                                style: TextStyle(
                                    wordSpacing: 2,
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    color: Color.fromRGBO(182, 178, 178, 1),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      //container for the text
                      child: Container(
                        child: Center(
                          child: screenwidth < 200
                              ? const Text(
                                  ' ',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 1,
                                      fontWeight: FontWeight.w400),
                                )
                              : const Text(
                                  "Interviews forge prowess through \n         intentional practice.",
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
                        ),
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
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 240,
                      width: 350,
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/image_assets/signin.png')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    screenwidth <
                            100 // The conditions to avoid the render overflow of the Name textfield
                        ? const Text(
                            'Allignment error',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        : SizedBox(
                            height: 90,
                            width: 400,
                            child: Column(
                              children: [
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'NAME',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 52,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(232, 232, 232, 1),
                                      borderRadius: BorderRadius.circular(35)),
                                  child: TextField(
                                    onChanged: (value) => name,
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Name',
                                        hintStyle: TextStyle(
                                            fontFamily: 'Inter', fontSize: 15),
                                        contentPadding: EdgeInsets.all(20)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    screenwidth < 100
                        ? const Text(
                            'Allignment error',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ) //This is condition used to avoid the render overflow of the email textfield

                        : SizedBox(
                            height: 90,
                            width: 400,
                            child: Column(
                              children: [
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  //This is for the email in put textfield
                                  height: 52,
                                  width: 380,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(232, 232, 232, 1),
                                      borderRadius: BorderRadius.circular(35)),
                                  child: TextField(
                                    onChanged: (value) => email,
                                    obscureText: false,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                            fontFamily: 'Inter', fontSize: 15),
                                        contentPadding: EdgeInsets.all(20)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    screenwidth <
                            100 //This is the condition used to avoid the render overflow of the following password textfield
                        ? const Text(
                            'Allignment error',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        : SizedBox(
                            height: 84,
                            width: 400,
                            child: Column(
                              children: [
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'PASSWORD',
                                          style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 5,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 52,
                                    width: 380,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(232, 232, 232, 1),
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                    child: TextField(
                                      onChanged: (value) => password,
                                      obscureText: _obscureText,
                                      decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            //Icon button to add the visibility icon to the password textfield
                                            icon: Icon(
                                              _obscureText
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _obscureText = !_obscureText;
                                              });
                                            },
                                          ),
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: const TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 15),
                                          contentPadding: const EdgeInsets.all(20)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const techinterviewPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(172, 118, 243, 1),
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
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
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
