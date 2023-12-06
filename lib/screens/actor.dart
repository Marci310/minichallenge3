import 'package:flutter/widgets.dart';
import '../models/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActorScreen extends StatefulWidget {
  final Actor actor;
  final int currentTab;
  const ActorScreen({super.key, required this.actor, required this.currentTab});

  @override
  ActorScreenState createState() => ActorScreenState();
}

class ActorScreenState extends State<ActorScreen> {
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
      children: [changeRegion(), selectProviders()],
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
        Image(
          image: AssetImage(widget.actor.profileImageUrl),
          width: 250,
          height: 250,
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            Text('${widget.actor.firstName} ${widget.actor.lastName}'),
            const SizedBox(
              width: 16,
            ),
            Text(widget.actor.age.toString())
          ],
        ),
        ListView()
      ],
    );
  }
}
