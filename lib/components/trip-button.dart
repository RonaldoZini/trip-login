import 'package:flutter/material.dart';

class TripButton extends StatefulWidget {
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  final bool secondary;

  TripButton({
    @required this.text,
    this.fontColor,
    this.backgroundColor,
    this.secondary,
  });

  @override
  _TripButtonState createState() => _TripButtonState();
}

class _TripButtonState extends State<TripButton> {
  @override
  Widget build(BuildContext context) {
    var _backgroundColor = Color(0xFFFF813D);
    var _fontColor = Color(0xFFF7F7F7);

    if(widget.secondary != null && widget.secondary){
      _fontColor = Color(0xFFFF813D);
      _backgroundColor = Color(0xFFF7F7F7);
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
        onPressed: () {
          print(widget.text);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        fillColor: widget.backgroundColor ?? _backgroundColor,
      )
    );
  }
}
