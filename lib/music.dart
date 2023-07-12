import 'package:flutter/material.dart';
import 'package:harmonyhub/ui/heart.dart';

class PlayMusic extends StatelessWidget {
  // String? image;
  // String? artist;
  // String? title;

  // PlayMusic(this.image, this.artist, this.title);

  final String image = 'https://source.unsplash.com/800x800/?music';
  String artist = 'Bob Johnson';
  String title = 'Cheerleader';

  double _status = 0.0;
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(Icons.keyboard_arrow_down),
            Text(title, style: TextStyle(fontSize: 17.0)),
            Icon(Icons.more_vert),
          ]),
        ),
        Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    image,
                    width: 370,
                    height: 370,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            // this.title!,
                            title,
                            style: TextStyle(fontSize: 25.0),
                          )),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                              // this.artist!
                              artist,
                              style: TextStyle(fontSize: 15.0))),
                      Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Slider(
                            value: _status,
                            activeColor: Color.fromARGB(255, 252, 26, 225),
                            thumbColor: Color.fromARGB(255, 252, 26, 225),
                            inactiveColor: Color.fromARGB(255, 245, 206, 240),
                            onChanged: (newValue) {
                              _status = newValue;
                            },
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HeartButton(),
                              IconButton(
                                icon: Icon(Icons.skip_previous),
                                iconSize: 50,
                                onPressed: () {
                                  // Handle previous button press
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.play_circle_filled),
                                iconSize: 50,
                                onPressed: () {
                                  // Handle play button press
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.skip_next),
                                iconSize: 50,
                                onPressed: () {
                                  // Handle next button press
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.loop),
                                iconSize: 23,
                                onPressed: () {
                                  // Handle next button press
                                },
                              ),
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
