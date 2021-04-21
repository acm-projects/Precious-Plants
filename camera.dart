import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCamPage(),
    );
  }
}

class MyCamPage extends StatefulWidget {
  @override
  _MyCamPageState createState() => _MyCamPageState();
}

class _MyCamPageState extends State<MyCamPage> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xDC2F7D32),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        backgroundColor: Colors.grey[200],
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}