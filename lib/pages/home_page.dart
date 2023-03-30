import 'dart:math';

import 'package:flutter/material.dart';
import 'package:story_ui/constant/custom_icons.dart';
import '../custom_data/data.dart';
import '../widgets/card_scroll_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// var cardAspectRatio = 12.0 / 16.0;
// var widgetAspectRation = cardAspectRatio * 1.2;

class _HomePageState extends State<HomePage> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    // implementing the page controller
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page as double;
      });
    });
    return Scaffold(
      backgroundColor: const Color(0xFF2d3447),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.lens_blur,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            // search part

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Trending",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 46.0,
                      fontFamily: "Calibre-Semibold",
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_control,
                        size: 20.0,
                        color: Colors.white,
                      ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFff6e6e),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.0, vertical: 6.0),
                        child: Text(
                          "Animated",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Text(
                    "25+ Stories",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                CardScrollWidget(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, indes) {
                      return Container();
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}