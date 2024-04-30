import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tam_app_v2/features/screens/main_screen/index.dart';

class AndroidTitleScreen extends StatefulWidget {
  const AndroidTitleScreen({super.key});

  @override
  State<AndroidTitleScreen> createState() => _AndroidTitleScreenState();
}

class _AndroidTitleScreenState extends State<AndroidTitleScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  // Future<void> fetchData() async {
  //   try {
  //     final data = await SheetDataApi.fetchDataFromGoogleScript();

  //     final dataProvider = Provider.of<DataFromSheet>(context, listen: false);

  //     dataProvider.setParsedData(
  //       eventsData: data['eventList']?.cast<EventsClass>(),
  //     );

  //     context.go('/');

  //   } catch (e) {
  //     print('Error: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                    return const MobilePortraitScreen();
                  }), (route) => false);
                },
                child: const Text('to main'),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 32,
              child: Image.asset(
                'assets/logo/logo_white.png',
              ),
            ),
          ],
        ),
    );
  }
}
