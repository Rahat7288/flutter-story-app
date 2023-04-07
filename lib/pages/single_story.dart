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
        title: Text("Story"),
      ),
      body: Center(
        child: Text("Story Page"),
      ),
    );
  }
}
