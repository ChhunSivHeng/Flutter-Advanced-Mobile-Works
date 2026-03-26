import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model/artist_view_model.dart';
import 'widget/artist_content.dart';
import '../../../data/repositories/artist/artist_repository_firebase.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ArtistViewModel(artistRepository: ArtistRepositoryFirebase()),
      child: const ArtistContent(),
    );
  }
}
