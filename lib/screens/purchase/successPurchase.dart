import 'package:flusix/screens/dashboard/homescreen.dart';
import 'package:flusix/screens/order/order.dart';
import 'package:flutter/material.dart';

class SuccessPurchase extends StatefulWidget {
  const SuccessPurchase({super.key});

  @override
  State<SuccessPurchase> createState() => _SuccessPurchaseState();
}

class _SuccessPurchaseState extends State<SuccessPurchase> {
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/poster.png'),
              ),
              Text(
                'Selamat Menonton',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Berhasil membeli tiket',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Lihat tiket')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text('Kembali ke beranda'))
            ],
          ),
        ),
      ),
    );
  }
}
