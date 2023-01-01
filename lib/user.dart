import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rahove/constants.dart';
import 'package:rahove/reusable.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Stack(
                  children: [
                    Image.asset('images/profile.png',),
                    Positioned(
                      bottom: 0,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5,
                            sigmaY: 5
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                              height: 100,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 50,
                        left: 20,
                        child: Text('Liya Dereje',style: kpopTstyle.copyWith(fontSize: 20),)),
                    Positioned(
                        bottom: 30,
                        left: 20,
                        child: Text('LiyaDereje2@gmail.com',style: kpopTstyle.copyWith(fontSize: 12,color: Color(0xffF7F7F7)),)),
                    Positioned(
                      right: 30,
                      bottom: 20,
                      child:   TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,horizontal: 15
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
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),)
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4 - 10,
                color: Color(0xffF5F5F5),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 51.0,top: 12,bottom: 5),
                      child: Text('Settings',style: kpopTstyle.copyWith(fontSize: 14,color: Color(0xff878787)),),
                    ),
                    settingTile(title: 'Notification',icon: Icons.notifications_none,num: '4',),
                    settingTile(title: 'Reports',icon: Icons.circle,num: '2',),
                    settingTile(title: 'Email',icon: Icons.email_outlined,num: '2',),
                    settingTile(title: 'Security and policy',icon: Icons.security,num: '4',),
                    settingTile(title: 'Terms of service',icon: Icons.list_alt,num: '4',),
                    settingTile(title: 'Accessibility',icon: Icons.accessibility,num: '4',),
                    settingTile(title: 'Log out',icon: Icons.logout_sharp,num: '4',),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

