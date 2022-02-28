import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_videos_player/counter/counter.dart';
import 'package:my_videos_player/l10n/l10n.dart';
import 'package:videos_repository/videos_repository.dart';

import '../../player/player_page.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.videosRepository}) : super(key: key);
  final VideosRepository videosRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FE)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: PlayerPage(),
    );
  }
}
