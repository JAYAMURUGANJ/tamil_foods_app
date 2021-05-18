import 'package:flutter/material.dart';
import 'package:recipe/models/food.dart';

import '../../constant.dart';

class DishDetailsPage extends StatefulWidget {
  final String foodCategory;
  final String dishName;
  final List<String> dishdetails;
  final String workflow;
  final String image;
  final Food food;

  DishDetailsPage(
      {this.dishdetails,
      this.food,
      this.foodCategory,
      this.dishName,
      this.workflow,
      this.image});

  @override
  _DishDetailsPageState createState() => _DishDetailsPageState();
}

class _DishDetailsPageState extends State<DishDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                title: Text(
                  widget.dishName,
                  style: TextStyle(
                    color: Colors.orange[80],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                background: Image.network(
                  widget.image,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: IconButton(
                    icon: Icon(
                      favroticon,
                      color: favroitColor,
                    ),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: appmainthemecolor,
                  child: IconButton(
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                    ),
                    iconSize: 25,
                    onPressed: () {
                      print("share");
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ]),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      tileColor: appmainthemecolor,
                      leading: Icon(Icons.list_sharp, color: Colors.white),
                      title: Text(
                        widget.foodCategory,
                        style: TextStyle(
                            color: Colors.white, fontSize: headingfont),
                      )),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.9, color: Colors.grey),
                      ),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Workflow",
                                    style: TextStyle(fontSize: 30)),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: MediaQuery.of(context).size.height,
                                child: Text(widget.workflow)),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ]))
        ],
      ),
    );
  }
}
