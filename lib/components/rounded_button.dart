import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final Color color;
  final String buttonTitle;
  final Function onpressed;
  const RoundedButton({this.color, this.buttonTitle, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressed,
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}