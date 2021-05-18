import 'package:flutter/material.dart';
import 'package:recipe/models/food.dart';
import '../../constant.dart';
import '../widgets/Categorylist.dart';

class CategoryListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryListPageState();
  }
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.store),
            Text("Tamil Foods"),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: Center(child: Text("Tamil Foods")),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: foodCategory.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Categorylist(
                food: Food(
                    category: foodCategory[index].category,
                    cid: foodCategory[index].cid,
                    images: foodCategory[index].images,
                    dislist: foodCategory[index].dislist),
                randcolor: Color(rnd.nextInt(0xFFCCC91D)),
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
