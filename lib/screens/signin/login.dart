import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
                      onPressed: () {},
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
