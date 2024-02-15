import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_project/presentation/ui/screens/product_list_screen.dart';
import 'package:rest_api_project/presentation/ui/widgets/product_card_item.dart';

import '../utility/app_colors.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const ProductListScreen(category: 'Electronics',));
      },
      child: Column(
        children: [
          Card(
            elevation: 0,
            color: AppColors.primaryColor.withOpacity(0.2),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.computer,
                color: AppColors.primaryColor,
                size: 32,
              ),
            ),
          ),
          const Text(
            'Electronics',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
