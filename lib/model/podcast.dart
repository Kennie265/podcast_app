class Podcast {
  final String audio;
  final String title;
  final String description;
  final String id;

  const Podcast({
    required this.audio,
    required this.title,
    required this.description,
    required this.id,
  });

  factory Podcast.fromJson(Map<String, dynamic> json) {
    return Podcast(
      audio: json['audio'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'audio': audio,
      'title': title,
      'description': description,
      'id': id,
    };
  }
  }