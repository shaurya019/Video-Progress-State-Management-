
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'VideoProgress.dart';

class CustomSlider extends StatefulWidget{
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var _value = 0.1;
  void _valueChange(double value) {
    setState(() {
      _value = value;
    });
    stateofVideoProgress.setState((){
      stateofVideoProgress.progress = value*100;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 30),
      child: Slider(
        onChanged: _valueChange,
        value:_value,
      ),
    );
  }


}