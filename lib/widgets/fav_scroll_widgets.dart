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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
                  child: Text(
                    storyModel.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 12.0),
                  child: Text(
                    storyModel.artur,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
