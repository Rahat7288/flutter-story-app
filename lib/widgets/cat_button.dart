import 'package:flutter/material.dart';

import '../helper/category_button_model.dart';

Widget CategoryButton(CategoryButtons categoryButtons) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // height: 100,
        decoration: const BoxDecoration(
          color: Color(0xFFff6e6e),
        ),
        child: Center(
          child: Text(
            categoryButtons.buttonName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}
