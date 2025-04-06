import 'package:flutter/material.dart';
import 'package:podcast_app/api/podcast_api.dart';
import 'package:podcast_app/view/widget/podcast_item.dart';
import 'package:podcast_app/model/podcast.dart';

// Main screen for displaying podcasts
class PodcastScreen extends StatefulWidget {
  const PodcastScreen({super.key});

  @override
  State<PodcastScreen> createState() => _PodcastScreenState();
}

class _PodcastScreenState extends State<PodcastScreen> {
  // List to hold fetched podcasts
  List<Podcast>? podcasts;

  // Instance of PodcastApi to fetch podcast data
  final podcastApi = PodcastApi();

  @override
  void initState() {
    super.initState();
    // Fetch podcasts when the screen is initialized
    fethPodcast();
  }

  // Method to fetch podcasts asynchronously
  Future<void> fethPodcast() async {
    await podcastApi.fethPodcast();
    // Update the UI after fetching podcasts
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App bar title
        title: const Text('Podcast Screen'),
        centerTitle: true,
      ),
      body: ListView.separated(
        // Number of items in the list
        itemCount: 10,
        // Separator between list items
        separatorBuilder: (_, _) => const SizedBox(height: 10),
        // Widget to display each podcast item
        itemBuilder: (context, index) => const PodcastItem(),
      ),
    );
  }
}