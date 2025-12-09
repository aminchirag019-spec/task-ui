import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/contributionScreen/contribution_screen.dart';
import '../screens/fieldScreen/field_screen.dart';
import '../screens/homeScreen/home_screen.dart';
import '../screens/informationScreen/information_screen.dart';
import '../screens/partyScreen/party_output_screen.dart';
import '../screens/partyScreen/partyprediction_screen.dart';
import '../widget/bottom_navigationbar.dart';
import 'package:task_ui/main.dart';
final GoRouter approuter = GoRouter(
  initialLocation: '/HomeScreen',
  routes: [
    ShellRoute(
      // IMPORTANT: pass state.location into the shell (avoid calling GoRouter.of(context).location inside the shell)
      builder: (BuildContext,state,child) =>
          BottomShell(child: child, location: state.uri.path),
      routes: [
        GoRoute(
          path: '/HomeScreen',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/PartyScreen',
          builder: (context, state) => const PartyPredictionScreen(),
        ),
        GoRoute(
          path: '/ContributionScreen',
          builder: (context, state) => const ContributionScreen(),
        ),
        GoRoute(
          path: '/InformationScreen',
          builder: (context, state) => const InformationScreen(),
        ),
        GoRoute(
          path: '/FieldScreen',
          builder: (context, state) => FieldScreen(),
        ),
        GoRoute(
          path: '/PartyOutputScreen',
          builder: (context, state) {
            final data = state.extra as Map<String, String>;

            return PartyOutputScreen(
              name: data['name'] ?? '',
              partyImage: data['partyImage'] ?? '',
              partyName: data['partyName'] ?? '',
            );
          },
        ),
      ],
    ),
  ],
);

