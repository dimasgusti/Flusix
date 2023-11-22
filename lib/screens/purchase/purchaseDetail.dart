import 'package:flusix/screens/purchase/successPurchase.dart';
import 'package:flutter/material.dart';

class PurchaseDetail extends StatefulWidget {
  const PurchaseDetail({super.key});

  @override
  State<PurchaseDetail> createState() => _PurchaseDetailState();
}

class _PurchaseDetailState extends State<PurchaseDetail> {
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
        padding: const EdgeInsets.only(right: 8.0,left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cek detail sebelum pembayaran',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 16,),
            Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/poster.png'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('{Get name}'),
                      Text('{Get date}'),
                      Text('{Get location}'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Text(
              'ID Order'
            ),
            Text(
              'Cinema'
            ),
            Text(
              'Date & Time'
            ),
            Text(
              '2 Tickets'
            ),
            Text(
              'Seat'
            ),
            Text(
              'Fees'
            ),
            Text(
              'Total'
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saldo Wallet'
                  ),
                  Text(
                    'Rp. {Get saldo}'
                  )
                ],
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
                builder: (context) => SuccessPurchase()));
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