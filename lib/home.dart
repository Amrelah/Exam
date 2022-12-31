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
                          radius: 55,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'images/profile.png',
                            ),
                            radius: 50,
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            'images/img.png',
                          ))
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
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
            )
          ],
        ),
      ),
    );
  }
}
