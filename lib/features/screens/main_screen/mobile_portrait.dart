import 'package:flutter/material.dart';

import 'contacts_row/index.dart';
import 'mobile_app_bar.dart';

class MobilePortraitScreen extends StatefulWidget {
  const MobilePortraitScreen({super.key});

  @override
  State<MobilePortraitScreen> createState() => _MobilePortraitScreenState();
}

class _MobilePortraitScreenState extends State<MobilePortraitScreen> {
  // @override
  // void initState() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.portraitUp,
  //   ]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MobileAppBar(),
          SliverToBoxAdapter(
            child: Container(
              height: 0.9 * MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 8.0)
                  .copyWith(top: 8.0),
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverList(
                      delegate: SliverChildBuilderDelegate(childCount: 5,
                          (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: index < 4 ? 8.0 : 0),
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
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('title'),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: const BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    'assets/logo/logo_white.png',
                    scale: 1.5,
                  ),
                ),
                const ContactsRow(),
              ],
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 5, (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0)
                  .copyWith(bottom: 8.0),
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
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: const Center(
                          child: Text('title'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
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
            child: Column(
              children: [
                Image.asset(
                  'assets/logo/logo_white.png',
                  scale: 1.5,
                ),
                const ContactsRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
