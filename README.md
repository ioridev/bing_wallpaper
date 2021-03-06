<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
   <b>Welcomes contribution from everyone.</b>  

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/ioridev)  
Get a random bing wallpepar. 

![スクリーンショット 2022-02-04 23 59 45](https://user-images.githubusercontent.com/41247249/152551288-ce27946c-c225-485c-b31b-45617305e029.png)

## Usage
 
```dart
FutureBuilder(
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
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
