import 'dart:collection';

import 'package:flutter/material.dart';

class DragableTest extends StatelessWidget {

  Queue<Widget> children;

  DragableTest(this.children);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: children.toList(),
    );
  }
}
