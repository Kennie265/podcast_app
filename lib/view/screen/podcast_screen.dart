import 'package:flutter/material.dart';
import 'package:podcast_app/view/widget/podcast_item.dart';

class PodcastScreen extends StatefulWidget {
  const PodcastScreen({super.key});

  @override
  State<PodcastScreen> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcast Screen'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        itemBuilder: (context, index) => const PodcastItem(),
      ),
    );
  }
}