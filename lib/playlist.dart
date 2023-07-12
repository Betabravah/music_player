import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  final List<Map<String, String>> playlist = [
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: playlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 15.0, top: 15.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    playlist[index]['image']!,
                    width: 70,
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(playlist[index]['artist']!))
              ],
            ),
          );
        },
      ),
    );
  }
}
