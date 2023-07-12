import 'package:flutter/material.dart';
import 'package:harmonyhub/playlist.dart';

class ProfilePage extends StatelessWidget {
  final String image = 'https://source.unsplash.com/800x800/?music';

  final String name = 'John Doe';
  final String favorites = '710';
  final String playlists = '130';
  final String following = '234';

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
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(image),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    name,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 20.0),
                  Divider(
                    color: Color.fromARGB(255, 80, 80, 80),
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              favorites,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(
                              height: 11.0,
                            ),
                            const Text(
                              "Fav Songs",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(playlists),
                            const SizedBox(
                              height: 11.0,
                            ),
                            const Text(
                              "Playlists",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(following),
                            const SizedBox(
                              height: 11.0,
                            ),
                            const Text(
                              "Following",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 80, 80, 80),
                    thickness: 1.0,
                  ),
                  const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Personal Playlist",
                              style: TextStyle(fontSize: 23)),
                          Text(
                            "See all >",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey),
                          ),
                        ],
                      ))
                ],
              )
            ]),
      ),
    );
  }
}
