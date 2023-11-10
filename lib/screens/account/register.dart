import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flusix/screens/account/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void _signupAccount() {
    String fullname = _fullNameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty && fullname.isEmpty && password.isEmpty) {
      _alertDialog('Error', 'Isi data diri dengan benar!');
    } else if (password != confirmPassword) {
      _alertDialog('Error', 'Password tidak sama');
    } else {
      CollectionReference user = FirebaseFirestore.instance.collection('user');

      user.add({'name': fullname, 'email': email, 'password': password}).then(
          (DocumentReference document) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
        _alertDialog('Success', 'Berhasil membuat akun');
      }).catchError((e) {
        _alertDialog('Error', '$e');
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create Your Account',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.yellow[800],
              ),
              SizedBox(
                height: 16,
              ),
              Text('Full name'),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                    hintText: 'Type here',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Email Address'),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Type here',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Password'),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '****', hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 16,
              ),
              Text('Confirm Password'),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '****', hintStyle: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Continue to Sign In',
                        style: TextStyle(
                            color: Colors.yellow[800],
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[800], shape: BoxShape.circle),
                    child: TextButton(
                      onPressed: () {
                        _signupAccount();
                      },
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
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
