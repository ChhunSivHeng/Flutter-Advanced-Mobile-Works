import 'dart:convert';

import 'package:blabla/W9-Firebase/data/dtos/artist_dto.dart';
import 'package:blabla/W9-Firebase/data/repositories/artist/artist_repository.dart';
import 'package:blabla/W9-Firebase/model/artist/artist.dart';
import 'package:http/http.dart' as http;

class ArtistRepositoryFirebase extends ArtistRepository{
  static final Uri baseUri = Uri.https('w9-firebase-93b50-default-rtdb.asia-southeast1.firebasedatabase.app');
  static final Uri artistsUri = baseUri.replace(path: '/artists.json');
  

  
  @override
  Future<List<Artist>> fetchArtists() async {
    final http.Response response = await http.get(artistsUri);
    if (response.statusCode == 200) {
      Map<String, dynamic> artistJson = json.decode(response.body);
      List<Artist> result = [];
      for (var it in artistJson.entries) {
        String id = it.key;
        Map<String, dynamic> value = it.value;
        Artist artist = ArtistDto.fromJson(id, value);
        result.add(artist);
      }
      return result;
    } else {
      throw Exception('Failed to load artists');
    }
  }

  @override
  Future<Artist?> fetchArtistById(String id) {
    // TODO: implement fetchArtistById
    throw UnimplementedError();
  }
}