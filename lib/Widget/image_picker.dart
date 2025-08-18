import 'dart:io'; //mobile app

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb; //webapp


class ImagePickerwidget extends StatefulWidget {
  const ImagePickerwidget({super.key});

  @override
  State<ImagePickerwidget> createState() => _ImagePickerwidgetState();
}

class _ImagePickerwidgetState extends State<ImagePickerwidget> {
 final ImagePicker _picker = ImagePicker();
  XFile?file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              color: Colors.grey.shade200,
              child: Center(
                child: file == null ? Text('Image not picked',style: TextStyle(color: Colors.black),)
                : kIsWeb
                ? Image.network(file!.path) //for webapp
                :Image.file(File(file!.path)) //For mobile app
              ),
            ),
            ElevatedButton(onPressed: ()async{
              final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
              print('Image saved');
              print(file!.path);
            }, 
            child: Text('Pick Image'))
          ],
        ),
      ),
    );
  }
}