import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text('Portrait'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.account_circle,
            size: 32,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
