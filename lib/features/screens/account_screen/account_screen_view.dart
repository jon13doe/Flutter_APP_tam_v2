import 'package:flutter/material.dart';

import 'auth_screen/views/auth_screen.dart';

class AccountScreenView extends StatefulWidget {
  const AccountScreenView({super.key});

  @override
  State<AccountScreenView> createState() => _AccountScreenViewState();
}

class _AccountScreenViewState extends State<AccountScreenView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AuthScreen();
  }
}

//     return BlocBuilder<AuthenticationBloc, AuthenticationState>(
//       builder: ((context, state) {
//         if (state.status == AuthenticationStatus.authenticated) {
//           return MultiBlocProvider(
//             providers: [
//               BlocProvider(
//                 create: (context) => SignInBloc(
//                     context.read<AuthenticationBloc>().userRepository),
//               ),
//               BlocProvider(
//                 create: (context) =>
//                     GetPizzaBloc(FirebasePizzaRepo())..add(GetPizza()),
//               ),
//             ],
//             child: const ModelScreen(),
//           );
//         } else {
//           return const AuthScreen();
//         }
//       }),
//     );
//   }
// }