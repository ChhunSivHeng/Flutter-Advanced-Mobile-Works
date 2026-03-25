import 'package:http/http.dart' as http show get;

import '../../../model/songs/song.dart';
import 'song_repository.dart';

class SongRepositoryHttp extends SongRepository {
  Uri songUrl = Uri.https('fooapi.com', '/api/songs');

void main() async {
    Uri songUrl = Uri.https('fooapi.com', '/api/songs');
    var response = await http.get(songUrl);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Future<List<Song>> fetchSongs() {
    // TODO: implement fetchSongs
  
    throw UnimplementedError();
  }

  @override
  Future<Song?> fetchSongById(String id) {
    // TODO: implement fetchSongById
    throw UnimplementedError();
  }
}
