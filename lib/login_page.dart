import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 20,
        ),
      child: Column(
      children: [
        Text(
          "welcome to sakura school simulator",
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.w900
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "cooluser43",
            labelText: 'Username',
            hintStyle: const TextStyle(
              color: Color(0xFFC1C1C1),
            ),
          ),
        ),

        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hint: Text("1234123"),
            labelText: 'Password'
          ),
        ),
        
        ElevatedButton(
          onPressed: () {}, 
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          ),
          child: Text("login"))
      ],
    ),
      )
    );
  }
}