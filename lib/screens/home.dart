import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/models/recipe_model.dart';
import 'package:recipes_app/widgets/search_bar.dart';
import 'package:recipes_app/widgets/recipe_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size; // height and width of device

    var currentLang = 1;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            decoration: BoxDecoration(
              color: kBackgroundColor
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  Text(
                    appTittle[lang[currentLang]],
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900, color: kTextColor),
                  ),
                  SearchBar(),
                  // TO-DO cathegory
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 1.25,
                      mainAxisSpacing: 25,
                      children: <Widget>[
                        RecipeCard(
                          recipe: Recipe(img: "assets/cake.jpg", name: "American burguer"),
                          press: () {
                            Navigator.pushNamed(context, '/recipe');
                          },
                        ),
                        RecipeCard(
                          recipe: Recipe(img: "assets/cake.jpg", name: "American burguer"),
                          press: () {
                            Navigator.pushNamed(context, '/recipe');
                          },
                        ),
                        RecipeCard(
                          recipe: Recipe(img: "assets/cake.jpg", name: "American burguer"),
                          press: () {
                            Navigator.pushNamed(context, '/recipe');
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}