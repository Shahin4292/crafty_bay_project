import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rest_api_project/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:rest_api_project/presentation/ui/screens/carts_screen.dart';
import 'package:rest_api_project/presentation/ui/screens/category_screen.dart';
import 'package:rest_api_project/presentation/ui/screens/home_screen.dart';
import 'package:rest_api_project/presentation/ui/screens/wishlist_screen.dart';
import 'package:rest_api_project/presentation/ui/utility/app_colors.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {

  final List<Widget> _screens = const [
    HomeScreen(),
    CategoryScreen(),
    CartsScreen(),
    WishListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: controller.changeIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carts'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Wish'),
            ],
          ),
        );
      }
    );
  }
}
