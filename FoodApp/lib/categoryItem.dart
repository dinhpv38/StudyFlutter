import 'package:flutter/material.dart';
import 'package:foodproject/models/category.dart';
import 'foods_page.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: (){

        Navigator.pushNamed(context, FoodsPage.routeName, arguments: {'category': category});

        // Navigator.of(context).push(
        // MaterialPageRoute(builder: (context) => FoodsPage(category: this.category)));
      },
      splashColor: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.8),
                  _color
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomRight
            ),
            color: _color,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(category.content,style: Theme.of(context).textTheme.headline1)
          ],
        ),
      )
    );
  }
}
