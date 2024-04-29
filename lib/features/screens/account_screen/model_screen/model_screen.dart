import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../main_screen/contacts_row/index.dart';

class ModelScreen extends StatefulWidget {

  const ModelScreen({super.key});

  @override
  State<ModelScreen> createState() => _AccountScreenViewState();
}

class _AccountScreenViewState extends State<ModelScreen> {
  final List<String> measurments = [
    'name',
    'height',
    'weight',
    'date of birth',
    'age',
    'eyes',
    'hair'
  ];

   @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(20, -1.2),
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.tertiary),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(2.7, -1.2),
                child: Container(
                  height: MediaQuery.of(context).size.width / 1.3,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 100.0,
                  sigmaY: 100.0,
                ),
                child: Container(),
              ),
              SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      automaticallyImplyLeading: false,
                      title: const Text('TAM img'),
                      actions: [
                        TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text(
                                  'My scedule',
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
                            Icons.menu,
                            size: 32,
                          ),
                          onPressed: () {
                            // logout lang theme
                          },
                        ),
                      ],
                    ),
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
                                          shape:
                                              const ContinuousRectangleBorder(),
                                          title: const Text('Measurments'),
                                          contentPadding: const EdgeInsets.all(8),
                                          children: [
                                            for (String item in measurments)
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                        delegate: SliverChildBuilderDelegate(childCount: 5,
                            (context, index) {
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
                    const SliverToBoxAdapter(
                      child: ContactsRow(
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
