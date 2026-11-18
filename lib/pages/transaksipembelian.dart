import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:pas_mobile_fatah_11pplg3/controller/transaksicontroller.dart';

class Transaksipembelian extends StatelessWidget {
  Transaksipembelian({super.key});
  final controller = Get.put(Transaksicontroller());
  final TextEditingController txtharga = TextEditingController();
  final TextEditingController txtpajak = TextEditingController();
  final TextEditingController txtppn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("transaksi"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'masukkan harga'
              ),
            ),

          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'masukkan pajak'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'masukkan ppn'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
