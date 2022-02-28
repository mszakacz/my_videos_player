import 'package:my_videos_player/app/app.dart';
import 'package:my_videos_player/bootstrap.dart';

import 'package:videos_api/videos_api.dart';
import 'package:videos_repository/videos_repository.dart';

void main() {
  const _videosApi = VideosApi();
  const _videosRepository = VideosRepository(videosApi: _videosApi);
  bootstrap(
    () => const App(videosRepository: _videosRepository),
  );
}
