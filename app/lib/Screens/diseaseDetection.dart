import 'package:flutter/material.dart';
class diseaseDetection extends StatefulWidget {
  const diseaseDetection({Key? key}) : super(key: key);

  @override
  State<diseaseDetection> createState() => _diseaseDetectionState();
}

class _diseaseDetectionState extends State<diseaseDetection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Disease Detection Screen.',
        ),
      ),
    );
  }
}
