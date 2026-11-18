import 'package:get/get.dart';
import 'package:pas_mobile_fatah_11pplg3/models/featmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Featcontroller extends GetxController {
  RxList<PremierLeagueModel> argumentsApi = <PremierLeagueModel>[].obs;

  RxString errormessage = ' '.obs;
  @override
  void onInit() {
    super.onInit();
    fetchProduk();
  }
  Future<void> fetchProduk() async {
    try {
      errormessage.value = '';

      final response = await http.get(
        Uri.parse('https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League'),
      );

      if (response.statusCode == 200) {

        final List<dynamic> data = jsonDecode(response.body);

        final hasil = data
            .map((item) => PremierLeagueModel.fromJson(item))
            .toList();

        argumentsApi.assignAll(hasil);

      } else {
        errormessage.value = 'Gagal mengambil data produk';
      }

    } catch (e) {
      errormessage.value = 'Terjadi kesalahan: $e';
    } finally {
      
    }
  }

  void hapusProduk(PremierLeagueModel item) {
    argumentsApi.remove(item);
  }
}
