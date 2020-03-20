// App Design and Code Author: Raymond Colin Turner 
// Lead Developer/Software Engineer: Raymond Colin Turner.
// Copyright © 2020: Ellatronix Ltd.

// ** Start of Root Code ** //


import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:path/path.dart';
//import 'package:async/async.dart';
//import '../widgets/main_drawer.dart';
//import 'package:path_provider/path_provider.dart';

class ImageInput extends StatefulWidget {
  
  @override
    State<StatefulWidget> createState() {
      return _ImageInputState();
  }
}

    // ************** TO DO **************** //
    // ********** ADD IMAGE CROP *********** //

//------------- Image Picker Modal -------------// 
class _ImageInputState extends State<ImageInput> {
  File _imageFile;

    void _getImage(BuildContext context, ImageSource source) {
    ImagePicker.pickImage(source: source, maxWidth: 400.0).then((File image) {
      setState(() {
        _imageFile = image;
      });
      Navigator.pop(context);
    });
  }
   void _openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context) {
      return Container(
          height: 190.0,
            padding: EdgeInsets.all(10.0),
        child: Column(children: [
        Text("Pick an Image", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          SizedBox(
            height: 20.0,
            ),
            FlatButton(
              textColor: Theme.of(context).primaryColor,
              child: Text("Use Camera"),
              onPressed: ()  {
                _getImage(context, ImageSource.camera);
              },
            ),
            FlatButton(
              textColor: Theme.of(context).primaryColor,
              child: Text("Use Gallery"),
              onPressed: ()  {
                _getImage(context, ImageSource.gallery);
                },
              )
            ]
          ),
        );
      }
    );      
  } 

  // =============== Image Picker Modal =============== //



  //============== FABButton and BottomAppBar (Add Photo) ===============//

@override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            verticalDirection: VerticalDirection.down,
            //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Icon(Icons.add_a_photo, color: Colors.black,),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
            ),
            color: Color(0xffFFCE00),
            textColor: Colors.black,
            padding: EdgeInsets.fromLTRB(110.0, 20.0, 110.0, 20.0),
            //padding: EdgeInsets.all(40.0),

            //=== OnPressed Wrapped in An Anonymous ===//
            onPressed: ()  {
              _openImagePicker(context);
            },
          ),
          
          _imageFile == null
            ? Text('' , style: TextStyle(color:Colors.black,),)
            : Image.file(
              _imageFile,
              fit: BoxFit.cover,                   
              height: 300.0,
              width: 280.0,
              //width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
        ],
      ),
    );
  }
}



// @override
// Widget build(BuildContext context) {
//   return new Scaffold(
//     //appBar: AppBar(title: const Text('Bottom App Bar')),
//     floatingActionButtonLocation: 
//       FloatingActionButtonLocation.centerDocked,
//     floatingActionButton: FloatingActionButton(
//       child: const Icon(Icons.add), onPressed: () {
//         _openImagePicker(context);
//       },
//     ),
//     bottomNavigationBar: BottomAppBar(
//       shape: CircularNotchedRectangle(),
//       notchMargin: 4.0,
//       child: new Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           //IconButton(icon: Icon(Icons.menu), onPressed: () {},),
//           //IconButton(icon: Icon(Icons.search), onPressed: () {},),



// Widget build(BuildContext context) {
//   return new Scaffold(
//     appBar: AppBar(title: const Text('Bottom App Bar')),
//     floatingActionButtonLocation: 
//       FloatingActionButtonLocation.centerDocked,
//     floatingActionButton: FloatingActionButton(
//       child: const Icon(Icons.add), onPressed: () {
//         _openImagePicker(context);
//       },),
//       bottomNavigationBar: BottomAppBar(
//       shape: CircularNotchedRectangle(),
//       notchMargin: 4.0,
//       child: new Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           IconButton(icon: Icon(Icons.menu), onPressed: () {},),
//           IconButton(icon: Icon(Icons.search), onPressed: () {},),
//         ],
//       ),
//     ),
//   );
// }


// @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //   appBar: AppBar(
  //   //title: Text(''),
  //   ),
  //     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () {
  //         _openImagePicker(context);
  //     },
  //     child: const Icon(Icons.camera, color: Colors.black),
  //     elevation: 2.0,
  //     ),
  //     bottomNavigationBar: BottomAppBar(
  //       shape: CircularNotchedRectangle(),
  //       color: Colors.yellow,
  //       notchMargin: 4.0,
  //       child: new Row(
  //         mainAxisSize: MainAxisSize.max,
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: <Widget>[
  //             IconButton(icon: Icon(Icons.menu), onPressed: () {},),
  //             IconButton(icon: Icon(Icons.send), onPressed: () {},),

    
  //================================= TO DO ==============================//
  //================= Implement the Image Picker Save Directory===========//
  //--------------------- Image Picker Save Directory --------------------//
  //================================= TO DO ==============================//
            //);
            //setState(() {
                //_storedImage = imageFile;
            //});

            //final appDir = await syspaths.getApplicationDocoumentsDirectory();
            //final fileName path.basename(imageFile.path);
            //final savedImage = await imageFile.copy('${appDir.path}/$fileName');


// @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//             //verticalDirection: VerticalDirection.down,
//             //crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           FlatButton(
//             child: Icon(Icons.add_a_photo, color: Colors.black,),
//             shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(14.0),
//             ),
//             color: Color(0xffFFCE00),
//             textColor: Colors.black,
//             padding: EdgeInsets.fromLTRB(110.0, 20.0, 110.0, 20.0),
//             //padding: EdgeInsets.all(40.0),

//             //=== OnPressed Wrapped in An Anonymous ===//
//             onPressed: ()  {
//               _openImagePicker(context);
//             },
//           ),
//         }