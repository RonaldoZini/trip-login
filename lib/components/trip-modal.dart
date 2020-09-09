import 'package:flutter/material.dart';

class TripModal {
  static showModalSheet(context, Widget content) {
    showModalBottomSheet(
        barrierColor: Colors.white.withOpacity(0),
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * 0.60,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF00A69F),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: EdgeInsets.only(left: 35, right: 35, top: 30),
                child: content,
              ),
            ),
          );
        });
  }
}
