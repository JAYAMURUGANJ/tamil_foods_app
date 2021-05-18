import 'package:flutter/material.dart';
import 'package:recipe/models/food.dart';
import 'package:recipe/view/screens/DishesListPage.dart';

class Categorylist extends StatelessWidget {
  final Color randcolor;
  final Food food;
  final int index;

  Categorylist({this.food, this.randcolor, this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: randcolor,
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.network(
                food.images,
                height: MediaQuery.of(context).size.height / 8,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(food.category,
                              style: TextStyle(fontSize: 15))),
                      Text("Total Dishes : " + food.dislist.length.toString(),
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ), //<-- will be replaced soon :)
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => new DishesListPage(
              food: Food(
                  category: food.category,
                  cid: food.cid,
                  dislist: food.dislist,
                  images: food.images),
            ),
          ),
        );
      },
    );
  }
}
