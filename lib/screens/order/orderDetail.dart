import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF333333),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Detail tiket',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFf9f7f7),
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Film
            Image.network(
              'data:image/jpeg;base64,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',
              width: 500,
              height: 300,
              //width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            SizedBox(height: 16.0),

            // Nama Film
            Text(
              'Nama Film',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),

            // Rating Film
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.grey),
                SizedBox(width: 8.0),
                Text('4.0', style: TextStyle(fontSize: 16.0)),
              ],
            ),

            SizedBox(height: 16.0),


            // Get Genre
            ElevatedButton(
              onPressed: () {
                // Handle Get Genre button click
              },
              child: Text('Get Genre'),
            ),

            SizedBox(height: 16.0),

            // Cinema, Date & Time, Seat, Name, Price
            Text('Cinema: Your Cinema'),
            Text('Date & Time: November 10, 2023 - 7:00 PM'),
            Text('Seat: A12, A13'),
            Text('Name: Your Name'),
            Text('Price: \$20.00'),

            SizedBox(height: 16.0),

            // QR Code
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              // You can add your QR code widget or image here
              child: Placeholder(),
            ),
          ],
        ),
      ), 
    );
  }
}