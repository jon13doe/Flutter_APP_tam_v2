import 'package:flutter/material.dart';

import 'features/screens/main_screen/index.dart';

class TamAppView extends StatelessWidget {
  const TamAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait) {
              return const MobilePortraitScreen();
            } else {
              return const MobileLandscapeScreen();
            }
          },
        ),
    );
  }
}
