import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override 
  _MyHomePageState createState() =>  _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
  File? _image;

  Future getImage(ImageSource source) async{
    final image = await ImagePicker().pickImage(source: source);
    if( image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pick an image'),
      ),
      body: Center(
        child: Column(
          children: [
          _image != null ? Image.file(
            _image!,
          width:250,
          height:250,
         ): Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fupload-symbol&psig=AOvVaw1tzzzcqp4drzNmPQoLGqJI&ust=1671013365887000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIDQq4qw9vsCFQAAAAAdAAAAABAD'),
          SizedBox(height: 40),
          CustomButton(
          title: 'Browse', 
          icon: Icons.image_outlined,
          onClick: () =>  getImage(ImageSource.gallery),
          ),
          SizedBox(height: 40),
           CustomButton(
          title: 'Click a picture', 
          icon: Icons.camera,
          onClick: () => getImage(ImageSource.camera) ,
          ),
        ],
        ),
      ),
    );
  }
}

Widget CustomButton( {
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
    width: 280,
    child: ElevatedButton(
      onPressed: onClick,
    child: Row(children: [
      Icon(icon),
      const SizedBox(width: 20),
      Text(title)  
    ],
    ),
    ),
  );
}
