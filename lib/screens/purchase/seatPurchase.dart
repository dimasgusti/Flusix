import 'package:flusix/screens/purchase/purchaseDetail.dart';
import 'package:flutter/material.dart';

class SeatPurchase extends StatefulWidget {
  const SeatPurchase({super.key});

  @override
  State<SeatPurchase> createState() => _SeatPurchaseState();
}

class _SeatPurchaseState extends State<SeatPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF333333),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Pilih kursi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFf9f7f7),
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 8.0),
        child: Column(
          children: [
            SizedBox(height: 8,),
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
            ),
            SizedBox(height: 16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Layar Bioskop'
                ),
              ],
            ),
            SizedBox(height: 16,),
            Image(
              image: AssetImage(
                'assets/images/Kursi-kursi.png'
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PurchaseDetail()));
        },
        child: Container(
          child: Icon(Icons.navigate_next),
          decoration: BoxDecoration(
            shape: BoxShape.circle
          ),
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
      )
    );
  }
}