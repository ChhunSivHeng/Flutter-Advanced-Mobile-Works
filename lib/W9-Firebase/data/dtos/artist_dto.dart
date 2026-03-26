import 'package:blabla/W9-Firebase/model/artist/artist.dart';

class ArtistDto {
  static const String nameKey = "name";
  static const String genreKey = "genre";
  static const String imageUriKey = "imageUrl";

  static Artist fromJson(String id, Map<String, dynamic> json){
    assert(json[nameKey] is String);
    assert(json[genreKey] is String);
    assert(json[imageUriKey] is String);

    return Artist(id: id, name: json[nameKey], genre: json[genreKey], imageUri: Uri.parse(json[imageUriKey]));
    
  }
  Map<String, dynamic> toJson(Artist artist){
    return {
      nameKey: artist.name,
      genreKey: artist.genre,
      imageUriKey: artist.imageUri.toString()
    };
  }
}
