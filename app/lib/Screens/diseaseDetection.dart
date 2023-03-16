import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class diseaseDetection extends StatefulWidget {
  const diseaseDetection({Key? key}) : super(key: key);
  @override
  State<diseaseDetection> createState() => _diseaseDetectionState();
}
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
class _diseaseDetectionState extends State<diseaseDetection> {
  @override
  String dropdownValue = list.first;
  String pathValue='';
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        //print(imageTemp);
      });
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Disease Detection',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Please select the plant.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      //isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down_circle,color: Colors.black,),
                      elevation: 16,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                          color: Colors.black,
                        fontSize: 20,
                      ),
                      // underline: Container(
                      //   height: 1,
                      //   color: Colors.black,
                      // ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                          print(dropdownValue);
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: Colors.black26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Please select the image.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.photo_library),
                              title: Text('Pick from gallery'),
                              onTap: () {
                                pickImage(ImageSource.gallery);
                                pathValue=image!.path;
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.photo_camera),
                              title: Text('Take a picture'),
                              onTap: () {
                                pickImage(ImageSource.camera);
                                pathValue=image!.path;
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 300,
            child: Center(
              child: image == null
                  ? Text('No image selected')
                  : Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:FileImage(
                            File(
                              image!.path,
                            )
                        )
                    )
                ),
              ),
              // Image(
              //   image: FileImage(
              //       File(pickedFile!.path)
              //   ),
              // ),
            ),
          ),
          Text(dropdownValue),
          Text(pathValue),
        ],
      ),
    );
  }
}
