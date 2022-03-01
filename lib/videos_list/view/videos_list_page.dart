import 'package:flutter/material.dart';
import 'package:my_videos_player/app/view/app.dart';
import 'package:my_videos_player/l10n/l10n.dart';

class VideosListPage extends StatelessWidget {
  const VideosListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideosListView();
  }
}

class VideosListView extends StatelessWidget {
  const VideosListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.videosListViewAppBarTitle),
      ),
    );
  }
}
