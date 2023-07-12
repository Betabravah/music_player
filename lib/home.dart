import 'package:flutter/material.dart';
import 'ui/card.dart';

class Home extends StatelessWidget {
  final List<Map<String, String>> musicList = [
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'artist': 'John Doe',
    },
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'artist': 'Jane Smith',
    },
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'artist': 'Bob Johnson',
    },
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'artist': 'Bob Johnson',
    },
  ];

  final List<Map<String, String>> playList = [
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'title': 'PlayList - 1',
    },
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'title': 'PlayList - 2',
    },
    {
      'image': 'https://source.unsplash.com/800x800/?music',
      'title': 'PlayList - 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Perfect For You",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          //
          Padding(
            padding: EdgeInsets.all(5.0),
            child: MusicCardListView(musicList, Axis.horizontal),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Your Playlists",
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: PlayListView(playList, Axis.horizontal)),

          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "June Hits",
              style: TextStyle(fontSize: 20.0),
            ),
          ),

          Padding(
              padding: EdgeInsets.all(5.0),
              child: HitsCardListView(musicList, Axis.horizontal)),
        ],
      ),
    ]));
  }
}
