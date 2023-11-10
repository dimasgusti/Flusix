import 'package:flusix/screens/account/registerConfirm.dart';
import 'package:flutter/material.dart';

class RegisterGenre extends StatefulWidget {
  const RegisterGenre({super.key, required this.fullname});
  final String fullname;
  @override
  State<RegisterGenre> createState() => _RegisterGenreState();
}

class _RegisterGenreState extends State<RegisterGenre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: 16,
              ),
              Wrap(
                // spacing: 5,
                children: <Widget>[
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/horror.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('Horror')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/music.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('Music')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/action.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('Action')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/drama.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('Drama')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/war.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('War')
                    ],
                  )),
                  Container(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/genre/crime.png'),
                            width: 150,
                            height: 150,
                          )),
                      Text('Crime')
                    ],
                  )),
                ],
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
                        'Back',
                      )),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[800], shape: BoxShape.circle),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegisterConfirm(fullname: widget.fullname)));
                      },
                      child: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
