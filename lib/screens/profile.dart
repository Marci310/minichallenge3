import 'package:flutter/material.dart';
import 'package:minichallenge3/screens/popular_list.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import 'screens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateManager>(
      builder: (context, manager, child) {
        return PopularListScreen(manager: manager);
      },
    );
  }
}
