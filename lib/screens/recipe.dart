import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<RecipeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  final List<String> steps = [
    'Mix the flower with the eggs',
    'Mix the batter with the milk slowly',
    'Add the Butter and the sugar',
    'Pre-heat oven 200ºC',
    'Bake it 15min',
  ];

  final List<String> ingredients = [
    'Flower 500g',
    '4 eggs',
    'Milk 500ml',
    'Sugar 200g',
    'Butter 10g',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/cake.jpg"),
                fit: BoxFit.fitWidth,
              ),
            ),
            height: 300,
          ),
          Container(
            decoration: new BoxDecoration(color: kTextColor),
            height: 70,
            child: new TabBar(
              controller: _controller,
              labelColor: Colors.black,
              indicatorColor: kBackgroundColor,
              tabs: [
                new Tab(
                  icon: const Icon(
                    Icons.shopping_basket,
                    size: 30,
                  ),
                ),
                new Tab(
                  icon: const Icon(
                    Icons.collections_bookmark,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: kBackgroundColor,
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: ingredients.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.chevron_right, color: Colors.white,),
                            title: Text(
                              ingredients[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                            ),
                          ),
                          Divider(
                            height: 5.0,
                            color: kTextColor,
                          ),
                        ],
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: steps.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: Text(
                              '${index+1}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                            ),
                            title: Text(
                              steps[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                            ),
                          ),
                          Divider(
                            height: 5.0,
                            color: Colors.grey[600],
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
