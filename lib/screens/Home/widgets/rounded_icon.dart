import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final _color;
  final _size;
  final _roundness;
  var _icon;
  RoundedIcon({color, size, roundness, icon = Icons.alarm})
      : _color = color,
        _size = size,
        _roundness = roundness;
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _color[100],
             border: Border.all(color: _color,width: 5.0),
             borderRadius: BorderRadius.all(Radius.circular(_roundness)
             ),
      ),

      child: Icon(
        _icon,
        color: _color,
        size: _size,

      ),
    );
  }
}
