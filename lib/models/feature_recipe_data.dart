import 'package:food_blog_app/models/feature_recipe.dart';

class FeatureRecipeData {
  final List<FeatureRecipe> recipes = [
    FeatureRecipe(recipeName: 'Food', recipeImagePath: 'images/food2.jpg'),
    FeatureRecipe(recipeName: 'Food', recipeImagePath: 'images/food3.jpg'),
  ];

  int get recipeCount {
    return recipes.length;
  }
}
