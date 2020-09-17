import 'package:flutter/material.dart';

class TripModal {

  static showModalSheet(context, Widget content) {
    bool _keyboardIsVisible(context) {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    showModalBottomSheet(
      barrierColor: Colors.white.withOpacity(0),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: _keyboardIsVisible(context) ? 1 : 0.6,
          child: Container(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF00A69F),
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
