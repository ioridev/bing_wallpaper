import 'package:bing_wallpaper_example/view/clock.dart';
import 'package:bing_wallpaper_example/view/wallpepar.dart';
import 'package:flutter/material.dart';

import 'date.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: const [
            Wallpepar(),
            Date(),
            Center(
              child: Clock(),
            ),
          ],
        ),
      ),
    );
  }
}
