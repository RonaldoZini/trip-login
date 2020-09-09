import 'package:flutter/material.dart';

class TripInput extends StatefulWidget {
  final String label;
  final String iconePath;
  
  TripInput({
      this.label,
      this.iconePath
  });
  @override
  _TripInputState createState() => _TripInputState();
}

class _TripInputState extends State<TripInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Email',
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      )
    );
  }
}