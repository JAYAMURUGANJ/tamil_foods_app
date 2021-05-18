import 'package:flutter/material.dart';
import 'package:recipe/models/food.dart';
import 'package:recipe/view/screens/Favorite.dart';
import 'package:recipe/view/widgets/Disheslist.dart';

class DishesListPage extends StatefulWidget {
  final Food food;
  DishesListPage({this.food});

  @override
  State<StatefulWidget> createState() {
    return _DishesListPageState();
  }
}

class _DishesListPageState extends State<DishesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.store),
            Text(widget.food.category),
          ],
        ),
        backgroundColor: Theme.of(context).accentColor,
        actions: [
          IconButton(
              icon: Icon(Icons.favorite_border_sharp),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritesPage(),
                  )))
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.food.dislist.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Disheslist(
                  food: Food(
                    category: widget.food.category,
                    cid: widget.food.cid,
                    images: widget.food.images,
                    dislist: widget.food.dislist,
                  ),
                  index: index);
            },
          ),
        ),
      ),
    );
  }
}
