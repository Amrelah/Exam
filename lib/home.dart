import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              color: Colors.blue,
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  // Container(
                  //   color: Colors.brown,
                  //   width: 300, //MediaQuery.of(context).size.width,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     shrinkWrap: true,
                  //     children: [
                  //       Container(
                  //         width: 200,
                  //         color: Colors.white,
                  //         child: Column(
                  //           children: [
                  //             ListTile(
                  //               leading: CircleAvatar(
                  //                 child: FaIcon(Icons.person),
                  //               ),
                  //               title: Text('Yonas Tesfaye'),
                  //               trailing: Text('+1000.0 ETB'),
                  //             ),
                  //             Divider(
                  //               color: Colors.black45,
                  //               thickness: 1.3,
                  //             ),
                  //             Text('500 -------------'),
                  //             Image.asset('images/graph.png'),
                  //             Text('0 -------------'),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // )
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
                                      child: FaIcon(Icons.person),
                                    ),
                                    title: Text('Yonas Tesfaye'),
                                    trailing: Text('+1000.0 ETB'),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 1.3,
                                  ),
                                  Text('500 -------------'),
                                  Image.asset('images/graph.png'),
                                  Text('0 -------------'),
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
                                      child: FaIcon(Icons.person),
                                    ),
                                    title: Text('Yonas Tesfaye'),
                                    trailing: Text('+1000.0 ETB'),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 1.3,
                                  ),
                                  Text('500 -------------'),
                                  Image.asset('images/graph.png'),
                                  Text('0 -------------'),
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
                                      child: FaIcon(Icons.person),
                                    ),
                                    title: Text('Yonas Tesfaye'),
                                    trailing: Text('+1000.0 ETB'),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 1.3,
                                  ),
                                  Text('500 -------------'),
                                  Image.asset('images/graph.png'),
                                  Text('0 -------------'),
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
                                      child: FaIcon(Icons.person),
                                    ),
                                    title: Text('Yonas Tesfaye'),
                                    trailing: Text('+1000.0 ETB'),
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                    thickness: 1.3,
                                  ),
                                  Text('500 -------------'),
                                  Image.asset('images/graph.png'),
                                  Text('0 -------------'),
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
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      child: FaIcon(Icons.person),
                    ),
                    title: Text('Yonas Tesfaye'),
                    trailing: Text('+1000.0 ETB'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: 'analaysis'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'list'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
