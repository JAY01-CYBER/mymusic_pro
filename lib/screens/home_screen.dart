import 'package:flutter/material.dart';
import '../widgets/hero_banner.dart';
import 'player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyMusic Pro"),
      ),
      body: ListView(
        children: [
          const HeroBanner(),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text("Play Sample Song"),
            subtitle: const Text("Smooth online streaming"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PlayerScreen(
                    url:
                        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
