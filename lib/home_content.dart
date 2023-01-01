import 'package:flutter/material.dart';

import 'constants.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
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
    Navigator.pushNamed(context, '/user');
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
    style: TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500),
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
    Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 10.0, vertical: 5),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(21),
    boxShadow: [
    BoxShadow(
    color: Colors.black,
    blurRadius: 2,
    offset: Offset(0, 1.5)),
    ]),
    width: 322,
    child: Column(
    children: [
    ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/feres.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Feres Transport',style: kpopTstyle.copyWith(fontSize: 10,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('Http://www.feres.com',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Text('...',style: TextStyle(color: Colors.black,fontSize: 30),),
    ),
    Divider(
    color: Colors.black45,
    thickness: 1.3,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text('500  '),
    Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
    ],
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40.0),
    child: Image.asset('images/graph.png'),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text('0  '),
    Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
    ],
    ),
    ],
    ),
    ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 10.0, vertical: 5),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(21),
    boxShadow: [
    BoxShadow(
    color: Colors.black,
    blurRadius: 2,
    offset: Offset(0, 1.5)),
    ]),
    width: 322,
    child: Column(
    children: [
    ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/chappa.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Chappa',style: kpopTstyle.copyWith(fontSize: 10,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('Http://www.chapa.com',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Text('...',style: TextStyle(color: Colors.black,fontSize: 30),),
    ),
    Divider(
    color: Colors.black45,
    thickness: 1.3,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text('500  '),
    Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
    ],
    ),
    Padding(
    padding: const EdgeInsets.only(left: 40.0),
    child: Image.asset('images/graph.png'),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text('0  '),
    Text('---------------------------------------------------',style: TextStyle(fontSize: 20),)
    ],
    ),
    ],
    ),
    ),
    ),
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
    Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
    decoration: BoxDecoration(
    color: Color(0xffEEEEEE),
    border: Border(bottom: BorderSide(color: Color(0xff858585),width: 1))
    ),
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/yonas.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Yonas Tesfaye',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('+251 939 09 0908',style: kpopTstyle.copyWith(fontSize: 8,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Column(
    children: [
    Text('+ 1000.2 ETB',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),),
    Text('04:08 AM',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),),
    ],
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
    decoration: BoxDecoration(
    color: Color(0xffEEEEEE),
    border: Border(bottom: BorderSide(color: Color(0xff858585),width: 1))
    ),
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/mihret.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Mihret Belay',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('+251 939 09 0908',style: kpopTstyle.copyWith(fontSize: 8,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Column(
    children: [
    Text('+ 720.2 ETB',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),),
    Text('04:08 AM',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),),
    ],
    ),
    ),
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
    Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
    decoration: BoxDecoration(
    color: Color(0xffEEEEEE),
    border: Border(bottom: BorderSide(color: Color(0xff858585),width: 1))
    ),
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/yonas.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Yonas Tesfaye',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('+251 939 09 0908',style: kpopTstyle.copyWith(fontSize: 8,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Column(
    children: [
    Text('+ 1000.2 ETB',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),),
    Text('04:08 AM',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),),
    ],
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
    decoration: BoxDecoration(
    color: Color(0xffEEEEEE),
    border: Border(bottom: BorderSide(color: Color(0xff858585),width: 1))
    ),
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage('images/mihret.png'),
    ),
    title: Column(
    children: [
    Align(alignment: Alignment.centerLeft,child: Text('Mihret Belay',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),)),
    Align(alignment: Alignment.centerLeft,child: Text('+251 939 09 0908',style: kpopTstyle.copyWith(fontSize: 8,color: Color(0xff858585)),)),
    ],
    ),
    trailing: Column(
    children: [
    Text('+ 720.2 ETB',style: kpopTstyle.copyWith(fontSize: 13,color: Colors.black),),
    Text('04:08 AM',style: kpopTstyle.copyWith(fontSize: 7,color: Color(0xff858585)),),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ));
  }
}
