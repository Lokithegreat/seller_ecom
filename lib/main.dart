import 'package:flutter/material.dart';
import 'package:seller/firebase_options.dart';
import 'package:seller/upload_profile_image.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, //This line is necessary
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FLUTTER DEMO',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const UploadProfileImage(),
    );
  }
}

