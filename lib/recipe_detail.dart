import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  RecipeDetail({super.key, required this.recipe});

  Recipes recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {

  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
              width: double.infinity,
              child: Image.asset(widget.recipe.imgURL),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              widget.recipe.label,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Palatino',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                      '${ingredient.quantity * _sliderVal} ${ingredient.container} ${ingredient.description}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              inactiveColor: Colors.black,
              activeColor: Colors.green,
              label: '${widget.recipe.servings * _sliderVal} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newValue){
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
