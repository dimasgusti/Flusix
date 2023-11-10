import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flusix/screens/account/register.dart';
import 'package:flusix/screens/dashboard/homescreen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signinAccount() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _alertDialog('Error', 'Isi data dengan benar!');
    } else {
      CollectionReference user = FirebaseFirestore.instance.collection('user');

      user
          .where('email', isEqualTo: email)
          .where('password', isEqualTo: password)
          .get()
          .then((QuerySnapshot querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeScreen()));
        } else {
          _alertDialog('Error', 'Email atau password salah!');
        }
      }).catchError((e) {
        _alertDialog('Error', 'Terdapat kesalahan pada: $e');
      });
    }
  }

  void _alertDialog(String title, String content) {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text(title),
            content: Text(
              content,
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage('assets/images/LOGO.png'),
                  width: 150,
                  height: 150),
              SizedBox(
                height: 16,
              ),
              Text(
                'Welcome back, Explorer!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Email Address',
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'name@mail.com',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Password',
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '****',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        'Continue to Sign Up',
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[800], shape: BoxShape.circle),
                    child: TextButton(
                      onPressed: () {
                        _signinAccount();
                      },
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Text(
                    'Back',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
