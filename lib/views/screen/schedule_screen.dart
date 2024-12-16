import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  final String title;
  final Color color;
  const SchedulePage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 32, color: color),
        ),
      ),
    );
  }
}
