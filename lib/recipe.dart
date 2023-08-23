import 'ingredient.dart';

class Recipes {
  String label;
  String imgURL;
  int servings;
  List<Ingredient> ingredients;

  Recipes(this.label, this.imgURL, this.servings, this.ingredients);

  static List<Recipes> sample = [
    Recipes(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpg',
      4,
      [
        Ingredient(4, 'und', 'Frozen Meatballs',),
        Ingredient(0.5, 'jar', 'sauce',),
        Ingredient(1, 'box', 'Spaghetti',),
      ],
    ),
    Recipes(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpg',
      2,
      [
        Ingredient(1, 'ca', 'Tomato Soup',),
      ],
    ),
  ];
}
