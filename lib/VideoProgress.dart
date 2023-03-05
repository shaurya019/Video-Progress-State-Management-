import 'package:flutter/cupertino.dart';

class VideoProgress extends StatefulWidget{
  @override
  State<VideoProgress> createState() => _VideoProgressState();
}

class _VideoProgressState extends State<VideoProgress> {
  @override
  final progress = 10.0;
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Video Progress \n${progress.toStringAsFixed(2)}%',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}