import 'dart:io';

import 'package:flutter/material.dart';

import 'features/screens/main_screen/index.dart';

class TamAppView extends StatelessWidget {
  const TamAppView({super.key});

  @override
  Widget build(BuildContext context) {
    String platform = Platform.operatingSystem;
    switch (platform) {
      case 'android':
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
              if (orientation == Orientation.landscape && MediaQuery.of(context).size.width > 6200) {
                return const MobileLandscapeScreen();
              } else {
                return const MobilePortraitScreen();
              }
            },
          ),
        );
      default:
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Center(
            child: Text('Not Android'),
          ),
        );
    }
  }
}