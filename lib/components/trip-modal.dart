import 'package:flutter/material.dart';

class TripModal {

  static showModalSheet(context, Widget content, [double? height]) {
    bool _keyboardIsVisible(context) {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    if(height == null) {
      height = 0.6;
    }

    showModalBottomSheet(
      barrierColor: Colors.white.withOpacity(0),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: _keyboardIsVisible(context) ? 1 : height,
          child: Container(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF4E3B73),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    _keyboardIsVisible(context) ? 0 : 50
                  ),
                  topRight: Radius.circular(
                    _keyboardIsVisible(context) ? 0 : 50
                  )
                )
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 35, right: 35, top: _keyboardIsVisible(context) ? 60 : 30),
                child: content,
              ),
            ),
          )
        );
      }
    );
  }
}
