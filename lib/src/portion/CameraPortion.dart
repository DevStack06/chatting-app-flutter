import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraPortion extends StatefulWidget
{
  @override
  _CameraPortionState createState() => _CameraPortionState();
}

class _CameraPortionState extends State<CameraPortion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Camera"),
    ) ;
  }
}