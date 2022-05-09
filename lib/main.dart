import 'package:flutter/material.dart';
import 'package:seller/upload_profile_image.dart';

import 'package:get/get.dart';

void main() {
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

