import 'package:flutter/material.dart';
import 'package:food_app/widgets/category_items.dart';
import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(e.id,e.color, e.title))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/ 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
    );
  }
}
