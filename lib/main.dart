import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Beats",
      initialRoute: AppPages.INITIAL,
theme: ThemeData.dark(),
      getPages: AppPages.routes,
    ),
  );
}
