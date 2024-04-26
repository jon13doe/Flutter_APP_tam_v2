import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../blocs/authentication_bloc/authentication_bloc.dart';
// import '../blocs/sign_up_bloc/sign_up_bloc.dart';
// import '../blocs/sing_in_bloc/sign_in_bloc.dart';
import '../../../main_screen/contacts_row/index.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      animationDuration: Durations.extralong2,
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
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
      backgroundColor: Theme.of(context).colorScheme.background,
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
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 0.25 * MediaQuery.of(context).size.height,
                  child: Center(
                    child: Image.asset(
                      'assets/logo/logo_white.png',
                      scale: 1.5,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 0.6 * MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: TabBar(
                          controller: tabController,
                          unselectedLabelColor: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.5),
                          labelColor:
                              Theme.of(context).colorScheme.onBackground,
                          tabs: const [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: TabBarView(
                        controller: tabController,
                        children: const [
                          SignInScreen(),
                          SignUpScreen(),
                          // BlocProvider<SignInBloc>(
                          // 	create: (context) => SignInBloc(
                          // 		context.read<AuthenticationBloc>().userRepository
                          // 	),
                          // 	child: const SignInScreen(),
                          // ),
                          // BlocProvider<SignUpBloc>(
                          // 	create: (context) => SignUpBloc(
                          // 		context.read<AuthenticationBloc>().userRepository
                          // 	),
                          // 	child: const SignUpScreen(),
                          // ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 0.15 * MediaQuery.of(context).size.height,
                  child: const ContactsRow(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
