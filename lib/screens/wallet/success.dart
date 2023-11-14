import 'package:flusix/screens/dashboard/homescreen.dart';
import 'package:flusix/screens/wallet/wallet.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 96,
            ),
      
            SizedBox(height: 20),
      
            // Text bold pertama
            Text(
              'Wow',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
      
            // Text bold kedua
            Text(
              'Wallet is Ready !',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
      
            SizedBox(height: 12),
      
            // Text regular pertama
            Text(
              'You have successfully',
              style: TextStyle(fontSize: 16),
            ),
      
            // Text regular kedua
            Text(
              'feed your wallet',
              style: TextStyle(fontSize: 16),
            ),
      
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman baru saat tombol ditekan
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Wallet()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[800], // Warna latar belakang tombol
                onPrimary: Colors.white, // Warna teks tombol
                minimumSize: Size(380, 50), // Ukuran tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Radius tombol
                ),
              ),
              child: Text(
                'My Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
      
            SizedBox(height: 15),
      
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(
                    255, 117, 117, 116), // Warna latar belakang tombol
                onPrimary: Colors.white, // Warna teks tombol
                minimumSize: Size(380, 50), // Ukuran tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Radius tombol
                ),
              ),
              child: Text(
                'Back To Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
