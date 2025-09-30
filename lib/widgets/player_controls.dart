import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerControls extends StatelessWidget {
  final AudioPlayer player;
  const PlayerControls({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: player.playerStateStream,
      builder: (context, snapshot) {
        final state = snapshot.data;
        final playing = state?.playing ?? false;

        return IconButton(
          iconSize: 80,
          color: Theme.of(context).colorScheme.primary,
          icon: Icon(playing ? Icons.pause_circle : Icons.play_circle),
          onPressed: () {
            if (playing) {
              player.pause();
            } else {
              player.play();
            }
          },
        );
      },
    );
  }
}
