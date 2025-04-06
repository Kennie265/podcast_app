import 'package:flutter/material.dart';
import 'package:podcast_app/view/screen/podcast_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: const PodcastScreen(),
  );
}
  