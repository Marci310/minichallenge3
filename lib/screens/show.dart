import 'package:flutter/widgets.dart';

class ShowScreen extends StatelessWidget {
  final String id;

  const ShowScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Text(id);
  }
}
