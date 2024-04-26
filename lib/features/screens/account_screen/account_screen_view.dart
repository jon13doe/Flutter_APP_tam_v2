import 'package:flutter/material.dart';

import '../main_screen/contacts_row/index.dart';

class AccountScreenView extends StatelessWidget {
  final List<String> measurments = [
    'name',
    'height',
    'weight',
    'date of birth',
    'age',
    'eyes',
    'hair'
  ];
  AccountScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('TAM img'),
        actions: const [
          Icon(
            Icons.account_circle,
            size: 32,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amberAccent,
                height: 0.9 * MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black,
                    ),
                    Positioned(
                      right: 8,
                      bottom: 8,
                      child: IconButton(
                        icon: const Icon(
                          Icons.rule,
                          color: Colors.amberAccent,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SimpleDialog(
                                shape: const ContinuousRectangleBorder(),
                                title: const Text('Measurments'),
                                contentPadding: const EdgeInsets.all(8),
                                children: [
                                  for (String item in measurments)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('$item:'),
                                        const Text('value'),
                                      ],
                                    ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
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
            child: Container(
              color: Colors.amberAccent,
              child: const ContactsRow(
                withImg: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
