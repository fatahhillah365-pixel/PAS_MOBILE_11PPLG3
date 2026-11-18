import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pas_mobile_fatah_11pplg3/pages/login_pages.dart';
import 'package:pas_mobile_fatah_11pplg3/pages/mainmenu_pages.dart';
import 'package:pas_mobile_fatah_11pplg3/pages/menudrawer.dart';
import 'package:pas_mobile_fatah_11pplg3/pages/transaksipembelian.dart';

class Routes {
  static const String loginpages = "/loginpages";
  static const String Menudrawer = "/menudrawer";
  static const String transaksi = "/transaksi";
  static const String mainmenu = "/mainmenu";


  static final myPages = [
    GetPage(name: loginpages, page: () => LoginPages()),
    GetPage(name: Menudrawer, page: () => Menudrawerpages()),
    GetPage(name: transaksi, page: () => Transaksipembelian()),
    GetPage(name: mainmenu, page: () => MainmenuPages()),
  ];
}
