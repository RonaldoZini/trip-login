import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TripInput extends StatefulWidget {
  final String? label;
  final String? iconePath;
  final TextInputType? type;
  final bool obscure;
  
  TripInput({
      this.label,
      this.iconePath,
      this.type,
      this.obscure = false
  }) : assert(obscure != null);
  @override
  _TripInputState createState() => _TripInputState();
}

class _TripInputState extends State<TripInput> {
  Color _color = Color(0xFFA79BBF);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Text(
                    widget.label!,
                    style : TextStyle(
                      color: _color,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: widget.obscure,
                      keyboardType: widget.type,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: SvgPicture.asset(widget.iconePath!),
                        ),
                        prefixIconConstraints: BoxConstraints(maxHeight: 40),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: _color,
                            width: 2
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: _color,
                            width: 2
                          )
                        )
                      ),
                    )
                  ),
                ])
              ],
            )
          );
  }
}