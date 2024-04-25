import 'package:flutter/material.dart';
import 'package:tam_app_v2/features/screens/account_screen/account_screen_view.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.orangeAccent,
      title: Text('TAM img'),
      actions: [
        TextButton(
            onPressed: () {},
            child: Row(
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
          icon: Icon(
            Icons.account_circle,
            size: 32,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AccountScreenView();
            }));
          },
        ),
      ],
    );
  }
}
