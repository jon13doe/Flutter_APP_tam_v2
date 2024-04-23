import 'package:flutter/material.dart';
import 'package:tam_app_v2/features/screens/main_screen/mobile_app_bar.dart';

import 'contacts_row/index.dart';

class MobilePortraitScreen extends StatelessWidget {
  const MobilePortraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const MobileAppBar(),
        SliverToBoxAdapter(
          child: Container(
            height: 0.9 * MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(top: 8.0),
            child: CustomScrollView(
              scrollDirection: Axis.horizontal,
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            width: 0.9 * MediaQuery.of(context).size.width,
                            color: Colors.amberAccent,
                            child: const Center(
                              child: Text('i'),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              color: Colors.orangeAccent,
                              child: const Center(
                                child: Text('title'),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              color: Colors.orangeAccent,
                              child: const Center(
                                child: Text('data'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: kToolbarHeight,
              color: Colors.amberAccent,
              child: const Center(child: Text('TAM img')),
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0).copyWith(bottom: 8.0),
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    height: 0.9 * MediaQuery.of(context).size.width,
                    color: Colors.amberAccent,
                    child: const Center(
                      child: Text('picture'),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      color: Colors.orangeAccent,
                      child: const Center(
                        child: Text('title'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      color: Colors.orangeAccent,
                      child: const Center(
                        child: Text('data'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        })),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.amberAccent,
            child: const ContactsRow(
              withImg: false,
            ),
          ),
        ),
      ],
    );
  }
}
