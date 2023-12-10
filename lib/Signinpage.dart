import 'package:flutter/material.dart';
import 'package:project_x/constants.dart';
import 'package:project_x/techinterviewPage.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  String? email;
  String? password;
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
                    const Text(
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
                    screenwidth < 200
                        ? const Text(
                            'Allignment error',
                            style: TextStyle(
                                fontSize: 15,
                                color:
                                    Color.fromARGB(255, 255, 255, 255)),
                          )
                        : const SizedBox(
                            height: 120,
                            width: 290,
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
                    const SizedBox(
                      height: 30,
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
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
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                //The container for the whole workspace
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
                      height: 40,
                    ),
                    SizedBox(
                      //Email address text input textfield
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
                    screenwidth < 200
                        ? const Text(
                            'Allignment error',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        : SizedBox(
                            //Password text input textfield
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
                                        'PASSWORD',
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
                                            fontFamily: 'Inter', fontSize: 15),
                                        contentPadding: const EdgeInsets.all(20)),
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
