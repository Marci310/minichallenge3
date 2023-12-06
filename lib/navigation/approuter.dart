import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRouter {
  final AppStateManager appStateManager;
  final ProfileManager profileManager;

  AppRouter(this.appStateManager, this.profileManager);

  late final router = GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: appStateManager,
    initialLocation: 'home',
    routes: [
      GoRoute(
          name: 'home',
          path: '/home/:tab',
          builder: (context, state) {
            final tab = int.tryParse(state.params['tab'] ?? '') ?? 0;
            return Home(
              key: state.pageKey,
              currentTab: tab,
            );
          },
          routes: [
            GoRoute(
                name: 'show',
                path: '/show/:id',
                builder: (context, state) {
                  final showId = state.params['id'] ?? '';
                  return ShowScreen(id: showId);
                })
          ]),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          key: state.pageKey,
          child: Scaffold(
            body: Center(
              child: Text(state.error.toString()),
            ),
          ));
    },
    //todo: error, redirect handler
  );
}
