import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/models/favorites.dart';
import 'package:recipe/models/food.dart';
import 'package:recipe/view/screens/DishDetailsPage.dart';
import '../../constant.dart';

class Disheslist extends StatelessWidget {
  final int index;
  final Food food;

  Disheslist({
    this.food,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    var favoritesList = Provider.of<Favorites>(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => new DishDetailsPage(
              dishdetails: food.dislist[index].incrident,
              foodCategory: food.category,
              dishName: food.dislist[index].dname,
              workflow: food.dislist[index].workflow,
              image: food.images,
            ),
          ),
        );
      },
      child: Card(
        color: Color(rnd.nextInt(0xFFCCC91D)),
        margin: EdgeInsets.only(left: 4, right: 4, bottom: 24),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                  child: Image.network(
                    food.images,
                    height: MediaQuery.of(context).size.height / 8,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(food.dislist[index].dname,
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              key: Key('icon_$food.dislist[index].did'),
              icon: favoritesList.items.contains(food.dislist[index])
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border, color: Colors.black),
              onPressed: () {
                // print(dislist);
                // print(favoritesList.items.contains(food.dislist[index]));

                !favoritesList.items.contains(food.dislist[index])
                    ? favoritesList.add(food.dislist[index])
                    : favoritesList.remove(food.dislist[index]);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        favoritesList.items.contains(food.dislist[index])
                            ? 'Added to favorites.'
                            : 'Removed from favorites.'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
