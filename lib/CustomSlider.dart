
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/progress_value_provider.dart';

import 'VideoProgress.dart';

class CustomSlider extends StatefulWidget{
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  void _valueChange(double value) {
    Provider.of<ProgressValue>(context,listen: false).progress=value;
  }
  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress;
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Slider(
        onChanged: _valueChange,
        value:progress,
      ),
    );
  }


}