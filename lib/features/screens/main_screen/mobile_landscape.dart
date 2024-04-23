import 'package:flutter/material.dart';
import 'package:tam_app_v2/features/screens/main_screen/mobile_app_bar.dart';

class MobileLandscapeScreen extends StatelessWidget {
  const MobileLandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: [
        const MobileAppBar(),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.height,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildBuilderDelegate(childCount: 5,
                        (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            height: 0.9 * MediaQuery.of(context).size.height,
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
          child: Container(
            width: 0.7 * MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 5,
                      (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            height: 0.1 * MediaQuery.of(context).size.width,
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
      ],
    );
  }
}
