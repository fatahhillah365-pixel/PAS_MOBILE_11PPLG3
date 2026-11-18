import 'package:get/get.dart';

class Transaksicontroller extends GetxController {
  var Hargamakanan = 0.0.obs;
  var jumlah = 0.0.obs;
  var totalpajak = 0.0.obs;
  var totalppn = 0.0.obs;
  var total = 0.0.obs;

  void hitung(double h, double pajak, double ppn) {
    double pajak1 = h * pajak / 100;
    double ppn1 = h * ppn / 100;
    double hasil = h + pajak1 + ppn1;

    Hargamakanan.value = h;
    total.value = hasil;
    totalpajak.value = pajak1;
    totalppn.value = ppn1;
  }

  void reset() {
    Hargamakanan.value = 0.0;
    totalpajak.value = 0.0;
    totalppn.value = 0.0;
    total.value = 0.0;
  }
}
