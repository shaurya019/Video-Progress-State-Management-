import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/progress_value_provider.dart';
import 'package:provider/provider.dart';

late _VideoProgressState stateofVideoProgress;

class VideoProgress extends StatefulWidget{
  @override
  State<VideoProgress> createState() {
    stateofVideoProgress = _VideoProgressState();
    return stateofVideoProgress;
  }
}

class _VideoProgressState extends State<VideoProgress> {
  @override

  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context,listen: false).progress * 100;
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



