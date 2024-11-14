import 'dart:collection';

import 'package:flutter/material.dart';

class AlchemyField extends StatelessWidget {

  Queue<Widget> children;

  AlchemyField(this.children);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: children.toList(),
    );
  }
}
