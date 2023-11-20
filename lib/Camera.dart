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

import 'package:artsense/NavigationBar.dart';
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
      numResults: 9,
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
  /*return WillPopScope(
    onWillPop: () async {

      return true; // if true, return to homepage
    },*/


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromRGBO(41, 48, 64, 1), size: 40),
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 70,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Result',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            (imageSelect)
                ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(66, 103, 178, 1),
              ),
              height: 344,
              width: 350,
              margin: EdgeInsets.only(bottom: 5, top: 30, left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(height: 22),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.file(_image, fit: BoxFit.cover, height: 130, width: 312,),
                  ),
                  // Add the result display here
                  SizedBox(height: 22),
                  if (imageSelect)
                    ..._results.map((result) {
                      dynamic _label = "${result['label']}".replaceAll(RegExp(r'[0-9]\s'), '');
                      return Container(
                         width: 312,
                          margin: EdgeInsets.only(left: 22, right: 22, bottom: 23),
                          child: Column (
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(

                                child: Text(_label,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30, fontFamily:'Montserrat',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),

                              SizedBox( height: 8,),
                              SizedBox(
                                width: 304,
                                child: Text('The painting you scanned looks ${(result['confidence']*100).toStringAsFixed(2)}% like a $_label Style.',
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12, fontFamily:'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),),
                              ),
                              SizedBox( height: 16,),

                              Text('Accuracy',
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25, fontFamily:'Montserrat',
                                  fontWeight: FontWeight.w800,
                                ),),
                              SizedBox( height: 8,),
                              Text("${(result['confidence']*100).toStringAsFixed(2)}%",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15, fontFamily:'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),)
                            ]
                          )
                      );
                    }),
                ],
              ),
            )
                : Container( //else container, imageselect is empty.
              margin: const EdgeInsets.all(10),
                   child: const Opacity(
                   opacity: 0.8,
                    child: Center(),
              ),
            ),
          ],
        ),
      ),
    );
;
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