import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngitengs/presentation/kalkulator/views/result_kalkulator.dart';


import '../../config.dart';
import '../../presentation/home/views/pengeluaran_view.dart';
import '../../presentation/home/views/pendapatan_view.dart';
import '../../presentation/home/views/riwayat.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterControllerBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.PROFIL,
      page: () => ProfilScreen(),
      binding: ProfilControllerBinding(),
    ),
    GetPage(
      name: Routes.STATISTIC,
      page: () => StatisticScreen(),
      binding: StatisticControllerBinding(),
    ),
    GetPage(
      name: Routes.WISTLIST,
      page: () => WistlistScreen(),
      binding: WistlistControllerBinding(),
    ),
    GetPage(
      name: Routes.KALKULATOR,
      page: () => KalkulatorScreen(),
      binding: KalkulatorControllerBinding(),
    ),
    GetPage(
        name: Routes.RIWAYAT,
        page: () => Riwayat(),
        binding: HomeControllerBinding()),
    GetPage(
        name: Routes.PENDAPATAN,
        page: () => PendapatanView(),
        binding: HomeControllerBinding()),
    GetPage(
        name: Routes.PENGELUARAN,
        page: () => PengeluaranView(),
        binding: HomeControllerBinding()),
    GetPage(
      name: Routes.DANA_PENSIUN,
      page: () => DanaPensiunScreen(),
      binding: DanaPensiunControllerBinding(),
    ),
    GetPage(
      name: Routes.DANA_DARURAT,
      page: () => DanaDaruratScreen(),
      binding: DanaDaruratControllerBinding(),
    ),
    GetPage(
      name: Routes.RESULT_KALKULATOR,
      page: () => ResultKalkulator(),
      binding: KalkulatorControllerBinding()
    )
  ];
}
