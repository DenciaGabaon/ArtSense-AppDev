/*ERROR - idk why tflite package is not working
   tasks:
   -Gallery & Camera permission - Done
   - Camera & gallery crop - Done
   - import model
   - prediction out page design
   - paintings history, help
   Gallery & camera access - Done
*/

//import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class DisplayPrediction extends StatefulWidget {
   File importedimage;

  DisplayPrediction({Key? key, required this.importedimage}) : super(key: key);

  @override
  _DisplayPredictionState createState() => _DisplayPredictionState();
}

class _DisplayPredictionState extends State<DisplayPrediction> {
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
    res=(await Tflite.loadModel(model: "assets/initial_model_42.tflite",
        labels: "assets/labels.txt"))!;
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
      _image = image;
      imageSelect=true;
    });
  }

@override
Widget build(BuildContext context) {
    imageClassification(File(widget.importedimage.path));
  return WillPopScope(
    onWillPop: () async {
      return true; // if true, return to homepage
    },
    child: Scaffold(
      appBar: AppBar(title: Text('ArtSense')),
      body: ListView(
        children: [
          (imageSelect)
              ? Container(
            margin: const EdgeInsets.all(10),
            child: Image.file(_image),
          )
              : Container(
            margin: const EdgeInsets.all(10),
                 child: const Opacity(
                     opacity: 0.8,
                   child: Center(
                      child: Text("No image selected"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)
                  ? _results.map((result) {
                return Card(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              }).toList()
                  : [],
            ),
          ),
        ],
      ),
    ),
  );
 }
}


/*class TfliteModel extends StatefulWidget {
  const TfliteModel({Key? key}) : super(key: key);

  @override
  _TfliteModelState createState() => _TfliteModelState();
}

class _TfliteModelState extends State<TfliteModel> {

  late File _image;
 // late List _results
  bool imageSelect=false;
  @override
  void initState()
  {
    super.initState();
    loadModel();
  }
  Future loadModel()
  async {
    //Tflite.close();
    String res;
   // res=(await Tflite.loadModel(model: "assets/model.tflite",labels: "assets/labels.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image)
  async {
  //  final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
    //  _results=recognitions!;
      _image=image;
      imageSelect=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Classification"),
      ),
      body: ListView(
        children: [
          (imageSelect)?Container(
            margin: const EdgeInsets.all(10),
            child: Image.file(_image),
          ):Container(
            margin: const EdgeInsets.all(10),
            child: const Opacity(
              opacity: 0.8,
              child: Center(
                child: Text("No image selected"),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)?_results.map((result) {
                return Card(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "${result['label']} - ${result['confidence'].toStringAsFixed(2)}",
                      style: const TextStyle(color: Colors.red,
                          fontSize: 20),
                    ),
                  ),
                );
              }).toList():[],

            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: "Pick Image",
        child: const Icon(Icons.image),
      ),
    );
  }
  Future pickImage()
  async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    File image=File(pickedFile!.path);
    imageClassification(image);
  }




}*/