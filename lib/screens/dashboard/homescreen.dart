import 'package:flusix/screens/dashboard/dashboard.dart';
import 'package:flusix/screens/order/order.dart';
import 'package:flusix/screens/profile/profile.dart';
import 'package:flusix/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPages = 0;

  final List<Widget> _children = [
    Dashboard(),
    MyOrder(),
    Profile(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentPages = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          // backgroundColor: Color(0xFF333333),
          backgroundColor: Colors.white10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flusix',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFf9f7f7),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  // Icon(
                  //   Icons.wallet,
                  //   size: 24,
                  //   color: Colors.white,
                  // ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wallet()));
                    },
                    child:
                      Icon(
                        Icons.wallet,
                        size: 28,
                        color: Colors.white,
                      )
                  ),
                ],
              )
            ],
          )),
      body: _children[_currentPages],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentPages,
        selectedItemColor: Colors.yellow[800],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Tiket'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
