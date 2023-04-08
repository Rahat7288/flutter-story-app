import 'package:flutter/material.dart';
import 'package:story_ui/models/story_model.dart';

class SingleStory extends StatelessWidget {
  final StoryModel storyModel;
  const SingleStory({super.key, required this.storyModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2d3447),
        appBar: AppBar(
          backgroundColor: const Color(0xFF2d3447),
          title: Text(storyModel.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: SizedBox(
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      storyModel.images,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
