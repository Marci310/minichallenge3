import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fooderlichtheme.dart';
import 'models/models.dart';
import 'navigation/approuter.dart';
// TODO: Import app_router

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appStateManager = AppStateManager();
  runApp(Fooderlich(appStateManager: appStateManager));
}

class Fooderlich extends StatefulWidget {
  final AppStateManager appStateManager;

  const Fooderlich({super.key, required this.appStateManager});

  @override
  FooderlichState createState() => FooderlichState();
}

class FooderlichState extends State<Fooderlich> {
  late final _profileManager = ProfileManager();
  late final _appRouter = AppRouter(
    widget.appStateManager,
    _profileManager,
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _profileManager,
        ),
        ChangeNotifierProvider(
          create: (context) => widget.appStateManager,
        ),
      ],
      child: Consumer<ProfileManager>(
        builder: (context, profileManager, child) {
          ThemeData theme;
          if (profileManager.darkMode) {
            theme = FooderlichTheme.dark();
          } else {
            theme = FooderlichTheme.light();
          }

          final router = _appRouter.router;
          return MaterialApp.router(
            theme: theme,
            title: 'MovieApp',
            routeInformationParser: router.routeInformationParser,
            routeInformationProvider: router.routeInformationProvider,
            routerDelegate: router.routerDelegate,
          );
        },
      ),
    );
  }
}
