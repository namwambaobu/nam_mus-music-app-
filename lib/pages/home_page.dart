import 'package:flutter/material.dart';
import 'package:nam_mus/components/my_drawer.dart';
import 'package:nam_mus/models/playlist_provider.dart';
import 'package:nam_mus/models/song.dart';
import 'package:nam_mus/pages/song_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Reference to the playlist provider
  late PlaylistProvider playlistProvider;

  @override
  void initState() {
    super.initState();
    // Get the playlist provider instance
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  // Navigate to the song page
  void goToSong(int songIndex) {
    // Update the current song index
    playlistProvider.currentSongIndex = songIndex;

    // Navigate to the SongPage
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SongPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "P L A Y L I S T",
            style: TextStyle(
              letterSpacing: 2.0, // Adds spacing between letters
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder: (context, value, child) {
          // Get the playlist
          final List<Song> playlist = value.playlist;

          // Return a list view of songs
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              // Get the individual song
              final Song song = playlist[index];

              // Return the ListTile UI
              return ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image.asset(song.albumArtImagePath),
                onTap: () => goToSong(index),
              );
            },
          );
        },
      ),
    );
  }
}
