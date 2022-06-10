import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<CameraController?> _calculation() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras.first, ResolutionPreset.max);
    await controller?.initialize();
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CameraController?>(
        future: _calculation(),
        builder:
            (BuildContext context, AsyncSnapshot<CameraController?> snapshot) {
          return snapshot.hasError || controller == null
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFF3E8469),
                  ),
                )
              : CameraPreview(snapshot.data!);
        });
  }
}
