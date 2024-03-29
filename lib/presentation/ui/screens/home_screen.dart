import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_project/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:rest_api_project/presentation/ui/screens/product_list_screen.dart';
import 'package:rest_api_project/presentation/ui/widgets/home/section_title.dart';
import 'package:rest_api_project/presentation/ui/widgets/product_details/product_image_carousel.dart';
import '../utility/assets_path.dart';
import '../widgets/category_item.dart';
import '../widgets/home/circle_icon_Button.dart';
import '../widgets/product_card_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              searchTextField,
              const SizedBox(
                height: 16,
              ),
              const ProductImageCarousel(),
              const SizedBox(
                height: 16,
              ),
              SectionTitle(
                title: 'All Categories',
                onTapSeeAll: () {
                  Get.find<MainBottomNavController>().changeIndex(1);
                },
              ),
              categoryList,
              SectionTitle(
                title: 'Popular',
                onTapSeeAll: () {
                  Get.to(() => const ProductListScreen());
                },
              ),
              productList,
              const SizedBox(
                height: 8,
              ),
              SectionTitle(
                title: 'Special',
                onTapSeeAll: () {},
              ),
              productList,
              const SizedBox(
                height: 8,
              ),
              SectionTitle(
                title: 'New',
                onTapSeeAll: () {},
              ),
              productList,
            ],
          ),
        ),
      ),
    );
  }

  SizedBox get categoryList {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        shrinkWrap: false,
        primary: false,
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  SizedBox get productList {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        shrinkWrap: false,
        primary: false,
        itemBuilder: (context, index) {
          return const ProductCardItem();
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  TextField get searchTextField {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Colors.grey.shade200,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      title: Image.asset(AssetsPath.logoNav),
      actions: [
        CircleIconButton(
          onTap: () {},
          iconData: Icons.person,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleIconButton(
          onTap: () {},
          iconData: Icons.notifications,
        ),
      ],
    );
  }
}

