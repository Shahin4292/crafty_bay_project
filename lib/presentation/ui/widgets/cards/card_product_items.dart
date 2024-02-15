import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../utility/app_colors.dart';
import '../../utility/assets_path.dart';

class CardProductItems extends StatefulWidget {
  const CardProductItems({super.key});

  @override
  State<CardProductItems> createState() => _CardProductItemsState();
}

class _CardProductItemsState extends State<CardProductItems> {
  ValueNotifier<int> noOfItems = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        child: Row(
          children: [
            Image.asset(
              AssetsPath.dummyShoeImageJpg,
              width: 100,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
                child: Column(children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Casual Shoes 12skd 2023 Edition',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black45,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Color: Red'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('Size: XL')
                                ],
                              )
                            ],
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever_outlined,
                            color: Colors.grey,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$100',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.primaryColor),
                      ),
                      ValueListenableBuilder(
                          valueListenable: noOfItems,
                          builder: (context, value, _) {
                            return ItemCount(
                              initialValue: value,
                              minValue: 1,
                              maxValue: 20,
                              decimalPlaces: 0,
                              step: 1,
                              color: AppColors.primaryColor,
                              onChanged: (v) {
                                noOfItems.value = v.toInt();
                              },
                            );
                          }
                          ),
                    ],
                  )
                ])),
          ],
        ));
  }
}