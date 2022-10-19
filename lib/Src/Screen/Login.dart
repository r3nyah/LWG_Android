import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../Service/Auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Google Login',
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            AuthService().signInWithGoogle();
          },
          child: const Image(
            width: 170,
            image: NetworkImage('https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg'),
          ),
        ),
      )
    );
  }
}
