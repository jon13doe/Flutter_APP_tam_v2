import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tam_app_v2/features/screens/main_screen/contacts_row/contacts_row.dart';

class MobileLandscapeScreen extends StatelessWidget {
  const MobileLandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Colors.amberAccent),
        child: SafeArea(
          child: Row(
            children: [
              Container(
                width: 0.85 * MediaQuery.of(context).size.height,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildBuilderDelegate(childCount: 5,
                            (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: index < 4 ? 8.0 : 0),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Container(
                                height:
                                    0.85 * MediaQuery.of(context).size.height,
                                color: Colors.amberAccent,
                                child: const Center(
                                  child: Text('picture'),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
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
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
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
              Flexible(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0).copyWith(right: 8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 32,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.calendar_month),
                            ),
                          ),
                          const ContactsRow(withImg: false),
                          Container(
                            color: Colors.amber,
                            width: 32,
                            child: const Icon(
                              Icons.account_circle,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: kToolbarHeight,
                          color: Colors.amberAccent,
                          child: const Center(child: Text('TAM img')),
                        ),
                      ),
                      Flexible(
                        child: Container(
                          child: CustomScrollView(
                            slivers: [
                              SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      childCount: 5, (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(
                                      top: index != 0 ? 8.0 : 0),
                                  child: Container(
                                      color: Colors.amberAccent,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text('message N$index'),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_back),
                                          ),
                                        ],
                                      )),
                                );
                              })),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
