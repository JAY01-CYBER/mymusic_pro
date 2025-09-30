import 'package:just_audio/just_audio.dart';

class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioService._internal();

  final AudioPlayer player = AudioPlayer();

  Future<void> playUrl(String url) async {
    await player.setUrl(url);
    player.play();
  }

  void pause() => player.pause();

  void dispose() => player.dispose();
}
