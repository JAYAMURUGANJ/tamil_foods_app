import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/models/favorites.dart';

import '../../constant.dart';

class FavoritesPage extends StatelessWidget {
  static String routeName = '/favorites_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favorites'),
        ),
        body: FavoriteItemTile());
  }
}

class FavoriteItemTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var favoritesList = Provider.of<Favorites>(context, listen: false);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<Favorites>(builder: (context, food, child) {
          int favoriteCount = food.items.length;
          return favoriteCount != 0
              ? GridView.builder(
                  itemCount: food.items.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Color(rnd.nextInt(0xFFCCC91D)),
                      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(food.items[index].dname,
                                key: Key(
                                    'favorites_text_$food.items[index].did'),
                                style: TextStyle(fontSize: 15)),
                          ),
                          IconButton(
                            key: Key('remove_icon_$food.items[index].did'),
                            icon: Icon(Icons.close),
                            onPressed: () {
                              favoritesList.remove(food.items[index]);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Removed from favorites.'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  })
              : Center(child: Text("No Favorite Food Here..."));
        }));
  }
}
