import 'package:flutter/material.dart';

class TripButton extends StatefulWidget {
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  final bool secondary;
  final GestureTapCallback onPressed;

  TripButton({
    @required this.text,
    this.fontColor,
    this.backgroundColor,
    this.secondary,
    this.onPressed
  });

  @override
  _TripButtonState createState() => _TripButtonState();
}

class _TripButtonState extends State<TripButton> {
  @override
  Widget build(BuildContext context) {
    var _backgroundColor = Color(0xFFFFFFFF);
    var _fontColor = Color(0xFF4E3B73);

    if(widget.secondary != null && widget.secondary){
      _fontColor = Color(0xFFFFFFFF);
      _backgroundColor = Color(0xFFA79BBF);
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: RawMaterialButton(
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.fontColor ?? _fontColor,
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        fillColor: widget.backgroundColor ?? _backgroundColor,
      )
    );
  }
}
