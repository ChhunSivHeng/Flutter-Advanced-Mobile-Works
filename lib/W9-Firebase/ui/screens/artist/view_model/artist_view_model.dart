import 'package:flutter/material.dart';
import '../../../../data/repositories/artist/artist_repository_firebase.dart';
import '../../../../model/artist/artist.dart';
import '../../../utils/async_value.dart';

class ArtistViewModel extends ChangeNotifier {
	final ArtistRepositoryFirebase artistRepository;

	//loading, success, or error
	AsyncValue<List<Artist>> artistValue = AsyncValue.loading();

	ArtistViewModel({required this.artistRepository}) {
		_init();
	}

	void _init() async {
		fetchArtists();
	}

	void fetchArtists() async {
		artistValue = AsyncValue.loading();
		notifyListeners();
		try {
			List<Artist> artists = await artistRepository.fetchArtists();
			artistValue = AsyncValue.success(artists);
		} catch (e) {
			artistValue = AsyncValue.error(e);
		}
		notifyListeners();
	}

	@override
	void dispose() {
		super.dispose();
	}
}
