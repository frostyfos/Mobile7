import 'package:flutter/material.dart';
import 'package:mobile7/constants.dart';

class MainMenuIconButton extends StatelessWidget {
  MainMenuIconButton({
    @required this.icon,
    @required this.onPress,
    @required this.color,
    @required this.label,
  });

  final IconData icon;
  final Function onPress;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 100,
      child: Column(
        children: <Widget>[
          RawMaterialButton(
            onPressed: onPress,
            elevation: 10.0,
            fillColor: Color(0xFFF0F0F3),
            child: Icon(
              icon,
              size: 35.0,
              color: color,
            ),
            padding: EdgeInsets.all(10.0),
            shape: CircleBorder(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: Text(
              label,
              style: kMainIconButtonLabelTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
