import 'package:flutter/material.dart';

// import 'package:tam_app_v2/features/screens/account_screen/account_screen_view.dart';

import '../account_screen/auth_screen/views/welcome_screen.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.orangeAccent,
      title: Image.asset(
        'assets/logo/logo_white.png',
        scale: 1.5,
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  'Scedule',
                ),
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.calendar_month,
                ),
              ],
            )),
        IconButton(
          icon: const Icon(
            Icons.account_circle,
            size: 32,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const WelcomeScreen();
            }));
          },
        ),
      ],
    );
  }
}
