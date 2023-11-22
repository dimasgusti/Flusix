import 'package:flusix/screens/account/login.dart';
import 'package:flusix/screens/profile/editprofile.dart';
import 'package:flusix/screens/splash/splash_screen.dart';
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://example.com/path/to/your/profile_image.jpg'),
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            children: [
              Text(
                'Nama Pengguna',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Email Pengguna',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: Text('Edit profile'),
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_balance_wallet),
              SizedBox(
                width: 8.0,
              ),
              Text('My wallet')
            ],
          ),
          SizedBox(
            height: 16,
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.language),
            label: Text('Ubah bahasa'),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.help_outline), Text('Pusat bantuan')],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              SizedBox(
                height: 8.0,
              ),
              Text('Nilai aplikasi ini')
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 8.0,
              ),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SplashScreen()));
                },
                icon: Icon(Icons.logout),
                label: Text('Logout'),
              ),
            ],
          )
              ],
            ),
        ));
  }
}
