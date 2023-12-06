import 'package:flutter/material.dart';
import 'package:minichallenge3/screens/popular_list.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import 'screens.dart';

class UseScreen extends StatelessWidget {
  const UseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileManager>(
      builder: (context, manager, child) {
        return UserScreen(manager: manager);
      },
    );
  }
}
