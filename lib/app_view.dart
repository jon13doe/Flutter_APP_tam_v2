import 'dart:io';

import 'package:flutter/material.dart';

import 'features/screens/title_screen/title_screen.dart';

class TamAppView extends StatelessWidget {
  const TamAppView({super.key});

  @override
  Widget build(BuildContext context) {
    String platform = Platform.operatingSystem;
    switch (platform) {
      case 'android':
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AndroidTitleScreen(),
        );
      default:
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(
              child: Text('Dont work on $platform platform'),
            ),
          ),
        );
    }
  }
}