import 'package:flusix/screens/wallet/topup.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dompet',
          style: TextStyle(
            color: Color(0xFFf9f7f7),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(
          color: Color(0xFFf9f7f7),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Color(0xFFf9f7f7)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Transform.rotate(
                            angle: 90 * 3.141592653589793 / 180,
                            child: Icon(
                              Icons.sd_card,
                              size: 32,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Transform.rotate(
                            angle: 90 * 3.141592653589793 / 180,
                            child: Icon(
                              Icons.wifi,
                              size: 32,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Rp 5.351.020',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      Divider(),
                      Text(
                        'Saldo aktif',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 24,
            ),
            Text(
              'Riwayat Transaksi',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[800],
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Topup()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
