import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text('Get started'),
            Text('become a member of  our platform'),
            Text('Email'),
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
            Text('Password'),
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
            Text('Forget password?'),
            MaterialButton(
              onPressed: () {},
              shape: CircleBorder(side: BorderSide()),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Log in',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0xff9747FF)),
                padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 91, vertical: 12)),
                foregroundColor: MaterialStatePropertyAll(Color(0xff3B136F)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
