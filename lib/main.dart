
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_gif/home/home_view.dart';
import 'package:search_gif/home/home_view_controller_bindings.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Search gif",
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeViewControllerBingins(),
        ),
      ],
      defaultTransition: Transition.noTransition,
      debugShowCheckedModeBanner: false,
    ),
  );
}
