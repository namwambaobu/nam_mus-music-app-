import 'package:flutter/material.dart';
import 'package:nam_mus/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [];
}
