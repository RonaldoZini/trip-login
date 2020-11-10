import 'dart:io';
import 'package:flutter/material.dart';

class TripCameraPreview extends StatefulWidget {
  final String imagePath;
  final void Function(String path) callback;

  const TripCameraPreview({
    this.imagePath,
    this.callback
  });

  @override
  _TripCameraPreviewState createState() => _TripCameraPreviewState();
}

class _TripCameraPreviewState extends State<TripCameraPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.file(
            File(widget.imagePath),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
           Positioned(
            top: 30,
            right: 15,
            child: IconButton(
              icon: Icon(Icons.delete), 
              iconSize: 35,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.red[800],
            )
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF4E3B73),
        child: Icon(
          Icons.check,
          color: Color(0xFFFFFFFF),
        ),
        onPressed: () async {
          widget.callback(widget.imagePath);

          var count = 0;
          Navigator.popUntil(context, (route) {
              return count++ == 2;
          });
        },
      ),
    );
  }
}