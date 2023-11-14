import 'package:flusix/screens/wallet/success.dart';
import 'package:flutter/material.dart';

class Topup extends StatefulWidget {
  const Topup({super.key});

  @override
  State<Topup> createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Tambah Saldo',
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
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Text(
            'Jumlah',
          ),
          Container(
            width: 200,
            height: 80,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'IDR', hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Text('Atau'),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '25.000',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '50.000',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '100.000',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '150.000',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '200.000',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Colors.yellow[800],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        '250.000',
                        style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Success()));
              },
              child: Text('Topup'))
        ],
      ),
    );
  }
}
