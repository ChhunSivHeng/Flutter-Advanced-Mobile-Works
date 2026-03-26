import 'package:blabla/W9-Firebase/model/artist/artist.dart';

abstract class ArtistRepository {
  Future<List<Artist>> fetchArtists();
  
  Future<Artist?> fetchArtistById(String id);
}
