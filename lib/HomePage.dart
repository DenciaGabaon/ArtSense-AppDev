//ERROR SDK IS BELOW 26 - 04/11 - solved

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:tflite_flutter/tflite_flutter.dart'


import 'Camera.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => Home();
}

class Home extends State<MyHomePage>{

 /* File ? selectedImage; //storage for the selected image

  late File _image;
  late List _results;
  bool imageSelect=false;
  @override
  void initState()
  {
    super.initState();
    loadModel();
  }
  Future loadModel()
  async {
    Tflite.close();
    String res;
    res=(await Tflite.loadModel(model: "assets/model.tflite",labels: "assets/labels.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image)
  async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _results=recognitions!;
      _image=image;
      imageSelect=true;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 219, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
          child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 150),
                  Text(
                    'ArtSense',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 65),
                  Text(
                    'Choose an option how\n do you want to identify\n your painting?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 65),

                  ElevatedButton.icon(
                    onPressed: () {
                      _Camera();

                      /*async {
                      Map<Permission, PermissionStatus> statuses = await [
                      Permission.storage, Permission.camera,
                      ].request();
                      if(statuses[Permission.storage]!.isGranted && statuses[Permission.camera]!.isGranted){
                        _Camera();
                      } else {
                      print('no permission provided');
                      }*/

                    },
                    label: Text('Camera', style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                    icon: Image.asset(
                      'assets/icon _photo camera_.png',
                      height: 34,
                      width: 34,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                      minimumSize: Size(170, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Make the button round
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      _Gallery();

                      //_Gallery(context);
                    },
                    label: Text('Gallery', style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    )),
                    icon:  Image.asset(
                      'assets/icon _gallery add_.png',
                      height: 34,
                      width: 34, // Set the size of the icon
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(167, 160, 108, 1),
                      minimumSize: Size(170, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Make the button round
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }

  final picker = ImagePicker();

  _Gallery() async {
    await  picker.pickImage(
        source: ImageSource.gallery, imageQuality: 50,
        maxHeight: 500,maxWidth: 500
    ).then((value){
      if(value != null){
        _cropImage(File(value.path));
      }
    });
  }

  _Camera() async {
    await picker.pickImage(
        source: ImageSource.camera, imageQuality: 50,
        maxHeight: 500,maxWidth: 500
    ).then((value){
      if(value != null){
        _cropImage(File(value.path));
      }
    });
  }

  _cropImage(File imgFile) async {
    final croppedFile = await ImageCropper().cropImage(
        sourcePath: imgFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ] : [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio5x3,
          CropAspectRatioPreset.ratio5x4,
          CropAspectRatioPreset.ratio7x5,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [AndroidUiSettings(
            toolbarTitle: "Image Cropper",
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
          IOSUiSettings(
            title: "Image Cropper",
          )
        ]);
    if (croppedFile != null) {

      imageCache.clear();
      setState(() {
        var imageFile = File(croppedFile.path);

        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DisplayPrediction(importedimage: imageFile, )));
      });
      // reload();
    }
  }


/*
  void _openCamera(BuildContext context) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DisplayPrediction(importedimage: pickedFile, )));
  }

  void _Gallery(BuildContext context) async {
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => DisplayPrediction(importedimage: pickedFile,)));
  }


  Future _Gallery() async {
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
    Future _Camera() async {
      final returnedImage = await ImagePicker().pickImage(
          source: ImageSource.camera);
      setState(() {
        selectedImage = File(returnedImage!.path);
      });
    }
  }*/
}
