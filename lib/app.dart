import 'package:flutter/material.dart';

import 'app_view.dart';
// import 'features/blocks/authentication_bloc/authentication_bloc.dart';

class TamApp extends StatelessWidget {
  // final UserRepository userRepository;
  // const TamApp(this.userRepository, {super.key});
  const TamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TamAppView();
    // return RepositoryProvider<AuthenticationBloc>(
    //   create: (context) => AuthenticationBloc(userRepository: userRepository),
    //   child: const TamAppView(),
    // );
  }
}
