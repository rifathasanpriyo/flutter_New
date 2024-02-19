import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Day',
      //theme: ThemeData(primarySwatch: Colors.blue,brightness: Brightness.dark),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  List<XFile>? images;

   fontCamera() async {
    image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }
  fromgallary()async
  {
       image=await _picker.pickImage(source: ImageSource.gallery); 
       setState(() {
         
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ok"),
        backgroundColor: Colors.red,
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  File(image!.path),
                  width: 200,
                ),
              )
            else
              Icon(Icons.person_2_outlined),

              IconButton(onPressed: ()=>fontCamera(), icon: Icon(Icons.camera)),


              IconButton(onPressed: ()=>fromgallary(), icon: Icon(Icons.browse_gallery_outlined)),
          ],
          
        ),
      ),
    );
  }
}
