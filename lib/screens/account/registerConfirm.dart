import 'package:flusix/screens/account/login.dart';
import 'package:flutter/material.dart';

class RegisterConfirm extends StatelessWidget {
  const RegisterConfirm({super.key, required this.fullname});
  final String fullname;
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
              'Confirm New Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Icon(
              Icons.account_circle,
              size: 150,
              color: Colors.yellow[800],
            ),
            Text(
              'Welcome, $fullname',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            SizedBox(
              height: 96,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
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
    ));
  }
}
