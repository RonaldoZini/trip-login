import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tripLogin/components/trip-camera-preview.dart';

class TripCamera extends StatefulWidget {
  final void Function(String path)? callback;

  const TripCamera({
    Key? key,
    this.callback
  }) : super(key: key);

  @override
  TripCameraState createState() => TripCameraState();
}

class TripCameraState extends State<TripCamera> {
  late CameraController _controller;
  Future<void>? _initializeControllerFuture;
  var isCameraReady = false;
  
  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.last;

    _controller = CameraController(
      camera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();

    if (!mounted) {
      return;
    }

    setState(() {
      print('teste');
      isCameraReady = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _capture(BuildContext context) async {
    try {
      await _initializeControllerFuture;

      // final path = join(
      //   (await getTemporaryDirectory()).path,
      //   '${DateTime.now()}.png',
      // );

      final image = await _controller.takePicture();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TripCameraPreview(
            imagePath: image.path,
            callback: widget.callback
          ),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, AsyncSnapshot snapshot) {
              if (isCameraReady) {
                return CameraPreview(_controller);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            top: 30,
            right: 15,
            child: IconButton(
              icon: Icon(Icons.close), 
              iconSize: 35,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF4E3B73),
        child: Icon(
          Icons.camera_alt,
          color: Color(0xFFFFFFFF),
        ),
        onPressed: () async {
          _capture(context);
        },
      ),
    );
  }
}