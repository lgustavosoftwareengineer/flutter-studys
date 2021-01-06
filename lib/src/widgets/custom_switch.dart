import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;

  const CustomSwitch({Key key, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(value: value, onChanged: onChanged);
  }
}
