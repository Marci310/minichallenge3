import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class UserScreen extends StatefulWidget {
  final ProfileManager manager;
  const UserScreen({super.key, required this.manager});

  @override
  UserScreenState createState() => UserScreenState();
}

class UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            buildProfile(),
            Expanded(
              child: buildMenu(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenu() {
    return ListView(
      children: [buildDarkModeRow(), changeRegion(), selectProviders()],
    );
  }

  Widget buildDarkModeRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Dark Mode'),
          Switch(
            value: widget.manager.darkMode,
            onChanged: (value) {
              Provider.of<ProfileManager>(context, listen: false).darkMode =
                  value;
            },
          )
        ],
      ),
    );
  }

  Widget changeRegion() {
    return Text('Region');
  }

  Widget selectProviders() {
    return Text('Provider');
  }

  Widget buildProfile() {
    return Column(
      children: [
        Text(
          '${widget.manager.getUser.firstName} ${widget.manager.getUser.lastName}',
          style: const TextStyle(
            fontSize: 21,
          ),
        ),
      ],
    );
  }
}
