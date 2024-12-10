import 'package:flutter/material.dart';
import 'package:nam_mus/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [
    //song1
    Song(
        songName: 'This Is America',
        artistName: 'Childish Gambino',
        albumArtImagePath: 'assets/images/glover.png',
        audioPath: 'assets/audio/audio.png'),
    Song(
        songName: 'Money Tree',
        artistName: 'Kendrick Lamar',
        albumArtImagePath: 'assets/images/kdot.png',
        audioPath: 'assets/audio/audio.png'),
    Song(
        songName: ' Thinking About You',
        artistName: 'Frank Ocean',
        albumArtImagePath: 'assets/images/ocean.png',
        audioPath: 'assets/audio/audio.png'),
    Song(
        songName: 'Middle Child',
        artistName: 'J.Cole',
        albumArtImagePath: 'assets/images/jcole.png',
        audioPath: 'assets/audio/audio.png')
  ];

  int? _currentSongIndex;
  //GETTERS
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  //SETTERS
  set currentSongIndex(int? newIndex) {
    //update current song gindex
    _currentSongIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
