import 'package:flutter/material.dart';

class AppBarIconButton extends StatelessWidget {
  AppBarIconButton({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 1.0,
      minWidth: 1.0,
      child: RawMaterialButton(
        onPressed: onPress,
        elevation: 5.0,
        fillColor: Colors.white,
        child: Icon(
          icon,
          size: 25.0,
          color: Color(0xFF0C84D8),
        ),
        padding: EdgeInsets.all(10.0),
        shape: CircleBorder(),
      ),
    );
  }
}
