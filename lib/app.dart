import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rest_api_project/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:rest_api_project/presentation/ui/screens/auth/splash_screen.dart';
import 'package:rest_api_project/presentation/ui/utility/app_theme_data.dart';

import 'controller_binder.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemeData.lightThemeData,
      home: const SplashScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}