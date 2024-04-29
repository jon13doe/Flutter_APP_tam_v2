import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tam_app_v2/features/blocks/authentication_bloc/authentication_bloc.dart';

import 'auth_screen/blocs/sing_in_bloc/sign_in_bloc.dart';
import 'auth_screen/views/auth_screen.dart';
import 'model_screen/index.dart';

class AccountScreenView extends StatefulWidget {
  const AccountScreenView({super.key});

  @override
  State<AccountScreenView> createState() => _AccountScreenViewState();
}

class _AccountScreenViewState extends State<AccountScreenView>
    with TickerProviderStateMixin {
  late TabController tabController;

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
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: ((context, state) {
        if (state.status == AuthenticationStatus.authenticated) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => SignInBloc(
                    context.read<AuthenticationBloc>().userRepository),
              ),
              // BlocProvider(
              //   create: (context) =>
              //       GetPizzaBloc(FirebasePizzaRepo())..add(GetPizza()),
              // ),
            ],
            child: const ModelScreen(),
          );
        } else {
          return const AuthScreen();
        }
      }),
    );
  }
}
