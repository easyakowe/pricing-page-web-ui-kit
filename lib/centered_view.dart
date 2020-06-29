import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final Color color;

  const CenteredView({Key key, this.child, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 1440,
      padding: EdgeInsets.symmetric(horizontal: 70),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 950),
        child: child,
      ),
    );
  }
}