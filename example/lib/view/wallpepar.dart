import 'package:bing_wallpaper/bing_wallpaper.dart';
import 'package:flutter/material.dart';

class Wallpepar extends StatelessWidget {
  const Wallpepar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: FutureBuilder(
        future: BingWallpepar().getWallpepar(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Image.network(
              snapshot.data as String,
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
