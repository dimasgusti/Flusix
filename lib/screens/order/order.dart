import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 24,),
            Text(
              'My Tickets',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.yellow[800],
                  child: Center(
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 18,),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.grey[800],
                  child: Center(
                    child: Text(
                      'Used',
                      style: TextStyle(
                        color: Color(0xFFf9f7f7),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18,),
            Column(
              children: [
                Text(
                  'Data film'
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}