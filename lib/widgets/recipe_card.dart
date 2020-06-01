import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/models/recipe_model.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final Function press;
  const RecipeCard({
    Key key,
    this.recipe,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(recipe.img),
            fit: BoxFit.cover
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    recipe.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(
                          fontSize: 35,
                          color: kTextColor
                        ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}