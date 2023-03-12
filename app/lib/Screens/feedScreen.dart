import 'package:flutter/material.dart';
class feedScreen extends StatefulWidget {
  const feedScreen({Key? key}) : super(key: key);

  @override
  State<feedScreen> createState() => _feedScreenState();
}

class _feedScreenState extends State<feedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Feed Screen.',
        ),
      ),
    );
  }
}
