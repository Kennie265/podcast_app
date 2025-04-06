import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:dio/dio.dart';
import '../../model/podcast.dart';

class PodcastApi {
  final dio = Dio();
  Future <List<Podcast>> fethPodcast() async{
    const url = 'https://listen-api.listennotes.com/api/v2/search?q=podcast&sort_by_date=0&len_min=0&len_max=0&offset=0&safe_mode=0&next_offset=0&previous_offset';
    const apiKey = '8617058a766048e3a5ebe6f3fd229956';
    final heders =  {
      'X-ListeAPI-Key': apiKey,
      'Accept' : 'application/json',
    };
    if (await InternetConnectionChecker().hasConnection) {
      final response = await dio.get(
        url,
        options: Options(
          headers: heders,
        ),
      );
      final result = response.data['results'] as List;
      final podcasts = result.map((e) => Podcast.fromJson(e)).toList();
      return podcasts;
    } else{
      return [];
    }
  }
}