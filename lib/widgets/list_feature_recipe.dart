import 'package:flutter/material.dart';
import 'package:food_blog_app/models/feature_recipe_data.dart';
import 'package:food_blog_app/widgets/feature_recipe_tile.dart';

class ListFeatureRecipe extends StatelessWidget {
  final FeatureRecipeData recipeData = FeatureRecipeData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: recipeData.recipeCount,
      itemBuilder: (context, index) {
        final recipe = recipeData.recipes[index];
        return FeatureRecipeTile(
          recipeTitle: recipe.recipeName,
          recipeImagePath: recipe.recipeImagePath,
        );
      },
    );
  }
}
