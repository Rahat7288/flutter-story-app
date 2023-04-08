import 'package:flutter/material.dart';
import 'package:story_ui/models/story_model.dart';

Widget FavScroll(StoryModel storyModel) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      height: 100,
      width: 200,
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            storyModel.images,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                storyModel.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
