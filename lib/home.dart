import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rahove/constants.dart';
import 'package:rahove/reusable.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cur = 0;
  double h = 0.6;
  double b = 0.35;
  final controller = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if(controller.position.pixels != 0)
        {
          setState(() {
            h = 0.45;
            b = 0.5;
          });
        }
      else{
        setState(() {
          h = 0.6;
          b = 0.35;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final screen = [
      SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple.shade200,
                        Colors.purpleAccent.shade100
                      ]
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            cur = 3;
                          });;
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 33,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/profile.png',
                            ),
                            radius: 30,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                          padding: EdgeInsets.all(8),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2),
                                    blurRadius: 3)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'images/img.png',
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hello Soliana',
                        style: kpopTstyle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55, bottom: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Let’s check our status',
                        style: kpopTstyle,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Colors.transparent,
                    child: ListView(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Slider_Card(image: 'feres',name: 'Feres Transport',link: 'Http://www.feres.com',),
                          Slider_Card(image: 'chappa',name: 'Chappa',link: 'Http://www.chapa.com',),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView(
                shrinkWrap: false,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 9),
                    child: Text('Recent operations',style: kpopTstyle.copyWith(fontSize: 11,color: Colors.black),),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Color(0xff858585),
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text('Today',style: kpopTstyle.copyWith(fontSize: 7),),
                    ),
                  ),
                  RecentOpTile(name: 'Yonas Tesfaye',picture: 'yonas',phoneNo: '+251 939 09 0908',birr: '+ 1000.2 ETB',time: '04:08 AM'),
                  RecentOpTile(name: 'ihret Belay',picture: 'mihret',phoneNo: '+251 939 09 0908',birr: '+ 720.2 ETB',time: '04:08 AM'),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Color(0xff858585),
                      margin: EdgeInsets.only(left: 20,top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text('Yesterday',style: kpopTstyle.copyWith(fontSize: 7),),
                    ),
                  ),
                  RecentOpTile(name: 'Soliana Abrha',picture: 'soliana',phoneNo: '+251 939 09 0908',birr: '+ 1000.2 ETB',time: '04:08 AM'),
                  RecentOpTile(name: 'Yonas Tesfaye',picture: 'yonas',phoneNo: '+251 939 09 0908',birr: '+ 1000.2 ETB',time: '04:08 AM'),
                  RecentOpTile(name: 'Dawit Tsige',picture: 'dawit',phoneNo: '+251 939 09 0908',birr: '+ 720.2 ETB',time: '04:08 AM'),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(),
      SizedBox(),
      SingleChildScrollView(
        child: Column(
          children: [
            h==0.45?
            Container(
              height: MediaQuery.of(context).size.height * h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple.shade200,
                        Colors.purpleAccent.shade100
                      ]
                  )
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 70,
                    left: MediaQuery.of(context).size.width/2 - 55,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 53,
                      child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/profile.png',)),
                    ),
                  ),
                  Positioned(
                      bottom: 90,
                      left: MediaQuery.of(context).size.width/2 - 60,
                      child: Text('Liya Dereje',style: kpopTstyle.copyWith(fontSize: 20),)),
                  Positioned(
                      bottom: 65,
                      left: MediaQuery.of(context).size.width/2 - 80,
                      child: Text('LiyaDereje2@gmail.com',style: kpopTstyle.copyWith(fontSize: 12,color: Color(0xffF7F7F7)),)),
                  Positioned(
                    right: MediaQuery.of(context).size.width/2 - 60,
                    bottom: 5,
                    child:   TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 12,horizontal: 15
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: kpopTstyle.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),),
                  Positioned(
                      top: 30,
                      left: 20,
                      child:GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            cur = 0;
                          });
                        },
                        child: Row(
                          children: [
                            FaIcon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
                            Text('Back',style: kpopTstyle.copyWith(fontSize: 16),),
                          ],
                        ),
                      ))
                ],
              ),
            ):
            Container(
              height: MediaQuery.of(context).size.height * h,
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
                    ),),
                  Positioned(
                      top: 30,
                      left: 20,
                      child:GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            cur = 0;
                          });
                        },
                        child: Row(
                          children: [
                            FaIcon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
                            Text('Back',style: kpopTstyle.copyWith(fontSize: 16),),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * b,
              color: Color(0xffF5F5F5),
              child: ListView(
                  controller: controller,
                children: [
                  SizedBox(height: 15,),
                  Stack(
                    children: [
                      Divider(
                        thickness: 1,
                        color: Color(0xff858585),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.only(left: 40),
                          color: Color(0xffF5F5F5),
                          child: Text(
                            'Settings',
                            style: kpopTstyle.copyWith(fontSize: 14,color: Color(0xff878787)),
                          ))
                    ],
                  ),
                  settingTile(title: 'Notification',icon: Icons.notifications_none,num: '4',),
                  settingTile(title: 'Reports',icon: Icons.camera_rounded,num: '2',),
                  settingTile(title: 'Email',icon: Icons.email_outlined,num: '2',),
                  settingTile(title: 'Security and policy',icon: Icons.security,num: '4',),
                  settingTile(title: 'Terms of service',icon: Icons.list_alt,num: '4',),
                  settingTile(title: 'Accessibility',icon: Icons.accessibility,num: '4',),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: settingTile(title: 'Log out',icon: Icons.logout_sharp,num: '4',)),
                  SizedBox(height: 70,)
                ],
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
           screen[cur],
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 0.5
                      )
                    ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: cur,
                    onTap: (int index)
                    {
                      setState(() {
                        cur = index;
                      });
                    },
                    showSelectedLabels: false,
                    selectedItemColor: Color(0xff9747FF),
                    showUnselectedLabels: false,

                    items: [
                      BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Color(0xff858585),), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.analytics_outlined,color: Color(0xff858585),), label: 'analaysis'),
                      BottomNavigationBarItem(icon: Icon(Icons.list_alt,color: Color(0xff858585),), label: 'list'),
                      BottomNavigationBarItem(icon: Icon(Icons.person,color: Color(0xff858585),), label: 'profile'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



