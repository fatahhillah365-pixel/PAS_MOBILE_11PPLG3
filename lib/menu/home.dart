import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:pas_mobile_fatah_11pplg3/Routes.dart';
import 'package:pas_mobile_fatah_11pplg3/controller/produkcontroller.dart';
import 'package:pas_mobile_fatah_11pplg3/models/produkmodel.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final controller = Get.put(listproduk());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 245, 221),
      appBar: AppBar(
        title: Text("HOME", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 110, 158, 248),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: controller.produk.length,
                itemBuilder: (context, index) {
                  final produk = controller.produk[index];

                  return InkWell(
                    onTap: () {
                      Get.toNamed(
                        Routes.transaksi,
                        arguments: {
                          "no": produk.no,
                          "nama makanan" : produk.namamakanan,
                          "harga":produk.harga,
                          "deskripsi": produk.deskripsi
                        }
                      );
                    }
                    );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
