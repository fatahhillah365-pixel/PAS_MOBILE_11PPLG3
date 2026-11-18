import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/models/produkmodel.dart';

class listproduk extends GetxController {
  RxList<Produkmodel> produk = [
    Produkmodel(
      no: "1",
      namamakanan: " Nasi Goreng Spesial",
      harga: "Rp25.000",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk.",
    ),
    Produkmodel(
      no: "2",
      namamakanan: "Ayam Bakar Madu",
      harga: "Rp30.000",
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
    ),
    Produkmodel(
      no: "3",
      namamakanan: "Sate Ayam Madura",
      harga: "Rp28.000",
      deskripsi: "0 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
    ),
    Produkmodel(
      no: "4",
      namamakanan: "Mie Ayam Bakso",
      harga: "Rp20.000",
      deskripsi: " Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
    ),
    Produkmodel(
      no: "5",
      namamakanan: "Es Teh Manis Jumbo",
      harga: "Rp8.000",
      deskripsi:
          "  Minuman teh melati segar dengan gula asli dan es batu kristal",
    ),
  ].obs;

  List<Produkmodel> dataawal = [];
  @override
  void onInit() {
    super.onInit();
    dataawal.addAll(produk);
  }
}
