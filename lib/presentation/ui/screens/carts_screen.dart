import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_project/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:rest_api_project/presentation/ui/utility/app_colors.dart';


import '../widgets/cards/card_product_items.dart';

class CartsScreen extends StatefulWidget {
  const CartsScreen({super.key});

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (__) {
        Get.find<MainBottomNavController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Carts'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.find<MainBottomNavController>().backToHome();
            },
          ),
        ),
        body: Column(
          children: [
             Expanded(
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const CardProductItems();
                },
                separatorBuilder: (_, __) => const SizedBox(width: 8,)
              ),
            ),
            totalPriceAndCheckOutSection,
          ],
        ),
      ),
    );
  }

  Container get totalPriceAndCheckOutSection {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
              ),
              Text(
                '\$1000',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.primaryColor),
              )
            ],
          ),
          SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text('Check Out')))
        ],
      ),
    );
  }
}
