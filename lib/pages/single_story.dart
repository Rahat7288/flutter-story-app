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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  storyModel.artur,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  storyModel.publisher,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFFff6e6e),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  storyModel.date,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      storyModel.shortStory,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
