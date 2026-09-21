import 'package:belajar_flutter/calculator_page.dart';
import 'package:belajar_flutter/components/custom_button.dart';
import 'package:belajar_flutter/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Login Page"),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 20,
        ),
      child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Please fill out form to continue!",
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),

        const SizedBox(height: 9),

        CustomTextField(
          icon: Icons.person, 
          hint: 'Username', 
          isPassword: false,
          txtController: txtUsername
        ),
        
        const SizedBox(height: 12),

        CustomTextField(
          icon: Icons.password, 
          hint: 'Password', 
          isPassword: true,
          txtController: txtPassword
        ),

        const SizedBox(height: 12),

        CustomButton(
          onPressed: () {
            setState(() {
              String username = txtUsername.text.toString();
              String password = txtPassword.text.toString();

              if(username == "admin" && password == "admin"){
                statusLogin = "suksses";
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalculatorPage()),
                );
              }else{
                statusLogin = "woi salah";
              }
              
              print(statusLogin);
            });
          }, 
          buttonText: 'login')
        ],
      ),
      )
    );
  }
}