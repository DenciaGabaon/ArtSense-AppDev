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


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'ImagePop.dart';


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
  bool loading = true;

  //late String LabelHolder;


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
    res=(await Tflite.loadModel(model: "assets/initial_model_567.tflite",
        labels: "assets/labels.txt"))!;
    if (kDebugMode) {
      print("Models loading status: $res");
    }
  }


  Future imageClassification(File image)
  async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 7,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );

    setState(() {
      _results=recognitions!;
      _image = image;
      imageSelect = true;
      loading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    imageClassification(File(widget.importedimage.path));

    if (loading == true) {
      return const Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 300),
                Text('Identifying', style: TextStyle(
                  fontSize: 30, fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                ),),
               SizedBox(height: 35),
                ClipRRect(
                  child: Image( image: AssetImage('assets/loading.png'), // Use AssetImage for local images
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover, // Adjust the fit based on your requirements
                  ),
                ),
                SizedBox(height: 35),
                SizedBox(width: 120,
                child:  LinearProgressIndicator(
                  backgroundColor: Color.fromRGBO(66, 103, 178, 1),
                  color: Colors.grey,
                  minHeight: 10,)
                ),
              SizedBox(height: 35),
              Text('Please wait...', style: TextStyle(
                fontSize: 20, fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
              ),),


              
            ],
          ),
         
          
        ),
      );
    }

    String cleanedLabel = _results.isNotEmpty
        ? "${_results[0]['label']}".replaceAll(RegExp(r'[0-9]\s'), '')
        : "";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromRGBO(41, 48, 64, 1), size: 40),
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 70,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Result',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            (imageSelect && _results.isNotEmpty)
                ? Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromRGBO(66, 103, 178, 1),
              ),
                    height: 344,
                    width: 350,
                    margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                     child: Column(
                       children: [
                       const SizedBox(height: 22),
                         ClipRRect(
                           borderRadius: BorderRadius.circular(20),
                           child: Image.file(_image, fit: BoxFit.cover, height: 130, width: 312,),
                         ),
                  // Add the result display here
                         // const SizedBox(height: 22),


                  //  if (imageSelect)
                  // ..._results.map((result) {


                  //dynamic _label = "${_results[0]['label']}".replaceAll(RegExp(r'[0-9]\s'), '');
                  //  LabelHolder = _label;
                  (imageSelect && _results.isNotEmpty)
                      ?Container(
                      width: 312,
                      margin: const EdgeInsets.only(left: 22, right: 22, bottom: 23),
                      child: Column (
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Text( cleanedLabel,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30, fontFamily:'Montserrat',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            const SizedBox( height: 8,),

                            SizedBox(
                              width: 304,
                              child: Text('The painting you scanned looks ${(_results[0]['confidence']*100).toStringAsFixed(2)}% like a $cleanedLabel Style.',
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12, fontFamily:'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),),
                            ),
                            const SizedBox( height: 16,),

                            const Text('Accuracy',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25, fontFamily:'Montserrat',
                                fontWeight: FontWeight.w800,
                              ),),
                            const SizedBox( height: 8,),

                            Text("${(_results[0]['confidence']*100).toStringAsFixed(2)}%",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15, fontFamily:'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),),
                          ]
                      )
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
              //   ],
              //   ),
            )
                : Container( //else container, imageselect is empty.
              margin: const EdgeInsets.all(10),
              child: const Opacity(
                opacity: 0.8,
                child: Center(),
              ),
            ),

            const SizedBox( height: 49,),
            SizedBox( width: 261, child: Text('Other $cleanedLabel Paintings',
              style: const TextStyle(color: Color.fromRGBO(66, 103, 178, 1),
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w800,
                  fontSize: 15),textAlign: TextAlign.center,),),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                List<String> imagePaths = getImagePaths(cleanedLabel);

                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ImagePopup(selectedImagePath: imagePaths[index]);
                          },
                        );
                      },
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,

                    ),
                  ),
                ),);
              }),
            ),
          ],
        ),
      ),
    bottomNavigationBar :  BottomNavigationBar(
        backgroundColor: Colors.white,
            items: const [
               BottomNavigationBarItem(
                 icon:  Icon(Icons.home_outlined),//Image.asset('assets/home_outline.png',),
                 activeIcon: Icon(Icons.home_filled), //Image.asset('assets/icon _home_.png',),
                 label: 'Home'),
               BottomNavigationBarItem(
                 icon: Icon(Icons.palette_outlined),//Image.asset('assets/emoji _artist palette_.png', ),
                 activeIcon: Icon(Icons.palette),//Image.asset('assets/palette_filled.png',),
                 label: 'Paintings'),
        ],
      selectedItemColor: const Color.fromRGBO(66, 103, 178, 1),
      unselectedItemColor: const Color.fromRGBO(66, 103, 178, 1),
      iconSize: 35,
       onTap: (index) {
         if (index == 0) {
           Navigator.pop(context); // Go back to the previous screen
    } else if (index == 1) {
    // Navigate to the Paintings tab (assuming MyNavigation is the parent)
    }}
      ),
    );
  }
}


List<String> getImagePaths(String label) {
  switch (label) {
    case 'Abstract':
      return ['assets/Abstract/La mancha roja by Joan Miro.png',
        'assets/Abstract/Tableau I by Piet Mondrian.jpg',
        'assets/Abstract/Untitled by Wassily Kadinsky.jpg'];
    case 'Baroque':
      return ['assets/Baroque/Domine, que vadis by Annibale Carracci.jpg',
        'assets/Baroque/The Calling of St. Matthew by Caravaggio.jpg',
        'assets/Baroque/The Lamentation of Christ by Annibale Carraci.jpg'];
    case 'Expressionism':
      return ['assets/Expressionism/Dance Around the Golden Calf by Emil Nolde.jpg',
        'assets/Expressionism/The Blue Rider by Wassily Kadinsky.jpg',
        'assets/Expressionism/The Scream by Edward Munch.jpg'];
    case 'Impressionism':
      return ['assets/Impressionism/A Sunday on La Grande Jatte by Georges Seurat.jpg',
        'assets/Impressionism/A Woman Reading by Edouard Manet.jpg',
        'assets/Impressionism/Irises by Vincent Van Gogh.jpg'];
    case 'Realism':
      return ['assets/Realism/A Burial at Ornans by Gustave Courbet.jpg',
        'assets/Realism/Nighthawks by Edward Hopper.jpg',
        'assets/Realism/The Gross Clinic by Thomas Eakins.jpg'];
    case 'Renaissance':
      return ['assets/Renaissance/Mona Lisa by Leonardo da Vinci.jpg',
        'assets/Renaissance/The Creation of Adam by Michaelangelo.jpg',
        'assets/Renaissance/The Last Supper by Leonardo da Vinci.jpg'];
    case 'Surrealism':
      return ['assets/Surrealism/Battle of Fishes by Andrea Masson.png',
        'assets/Surrealism/Mama, Papa is Wounded by Yves Tanguy.jpg',
        'assets/Surrealism/The Great Masturbator by Salvador Dali.jpg'];
    default:
      return ['assets/imagePlaceholder2.png', 'assets/imagePlaceholder2.png',
        'assets/imagePlaceholder2.png'];
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

