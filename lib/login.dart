import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Get started',
                style: TextStyle(
                    color: Color(0xff9747FF),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'become a member of  our platform',
                style: TextStyle(
                    color: Color(
                      0xff515151,
                    ),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      fillColor: Color(0xffF4F4F4),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      fillColor: Color(0xffF4F4F4),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffF4F4F4)),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forget password?',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff858585),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: <Color>[
                          Color(0xFF3B136F),
                          Color(0xFF3B136F),
                          Color(0xFF9747FF),
                          Color(0xFF9747FF),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Divider(
                    thickness: 1,
                    color: Color(0xff858585),
                  ),
                  Center(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.white,
                          child: Text(
                            'log in with',
                            style: TextStyle(
                                color: Color(0xff858585),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400),
                          )))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                    size: 30,
                  ),
                  FaIcon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 35,
                  ),
                  FaIcon(
                    Icons.apple,
                    color: Colors.black,
                    size: 35,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        color: Color(0xff858585),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Color(0xff9747FF),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
