import 'package:flusix/screens/account/login.dart';
import 'package:flusix/screens/profile/editprofile.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        Container(
          height: 150,
          color: Colors.yellow[800],
          child: Center(
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 48,
                ),
                Text(
                  'Nama',
                  style: TextStyle(color: Color(0xFF333333)),
                ),
                Text(
                  'Email',
                  style: TextStyle(color: Color(0xFF333333)),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },
                    child: Text(
                      'Ubah profil',
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          color: Colors.yellow[800],
          height: 56,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
              'Sign out',
              style: TextStyle(color: Color(0xFF333333), fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 24,),
        Center(
          child: Text('UTS Pemrograman Mobile'),
        )
      ],
    ));
  }
}
