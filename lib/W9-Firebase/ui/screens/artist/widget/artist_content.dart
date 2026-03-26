import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../model/artist/artist.dart';
import '../../../theme/theme.dart';
import '../../../utils/async_value.dart';
import '../view_model/artist_view_model.dart';

class ArtistContent extends StatelessWidget {
  const ArtistContent({super.key});

  @override
  Widget build(BuildContext context) {
    // 1- Read the global artist view model
    final vm = context.watch<ArtistViewModel>();
    final AsyncValue<List<Artist>> asyncValue = vm.artistValue;

    Widget content;
    switch (asyncValue.state) {
      case AsyncValueState.loading:
        content = const Center(child: CircularProgressIndicator());
        break;
      case AsyncValueState.error:
        content = Center(
          child: Text(
            'error = \\${asyncValue.error!}',
            style: const TextStyle(color: Colors.red),
          ),
        );
        break;
      case AsyncValueState.success:
        final artists = asyncValue.data!;
        content = ListView.builder(
          itemCount: artists.length,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(artists[index].imageUri.toString()),
            ),
            title: Text(artists[index].name),
            subtitle: Text(artists[index].genre),
          ),
        );
        break;
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Text("Artists", style: AppTextStyles.heading),
          const SizedBox(height: 50),
          Expanded(child: content),
        ],
      ),
    );
  }
}
