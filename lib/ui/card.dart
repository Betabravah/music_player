import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  String? image;
  String? artist;

  MusicCard(this.image, this.artist);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 180,
        height: 220,
        child: Card(
          elevation: 10.0,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                this.image!,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  this.artist!,
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ));
  }
}

class MusicCardListView extends StatelessWidget {
  List<Map<String, String>>? musicList;
  dynamic direction;

  MusicCardListView(this.musicList, this.direction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: direction,
        itemCount: musicList!.length,
        itemBuilder: (BuildContext context, int index) {
          return MusicCard(
            musicList![index]['image'],
            musicList![index]['artist'],
          );
        },
      ),
    );
  }
}

class PlayListCard extends StatelessWidget {
  String? image;
  String? title;

  PlayListCard(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 330,
        height: 180,
        child: Card(
          elevation: 20.0,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Stack(
            children: [
              Image.network(
                this.image!,
                width: 330,
                height: 180,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 50,
                left: 10,
                child: Text(
                  this.title!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class PlayListView extends StatelessWidget {
  List<Map<String, String>>? playList;
  dynamic direction;

  PlayListView(this.playList, this.direction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: direction,
        itemCount: playList!.length,
        itemBuilder: (BuildContext context, int index) {
          return PlayListCard(
            playList![index]['image'],
            playList![index]['title'],
          );
        },
      ),
    );
  }
}

class HitsCard extends StatelessWidget {
  String? image;
  String? artist;

  HitsCard(this.image, this.artist);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 130,
        height: 160,
        child: Card(
          elevation: 10.0,
          margin: EdgeInsets.only(left: 10.0, right: 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                this.image!,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  this.artist!,
                  textAlign: TextAlign.start,
                ),
              )
            ],
          ),
        ));
  }
}

class HitsCardListView extends StatelessWidget {
  List<Map<String, String>>? musicList;
  dynamic direction;

  HitsCardListView(this.musicList, this.direction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: direction,
        itemCount: musicList!.length,
        itemBuilder: (BuildContext context, int index) {
          return HitsCard(
            musicList![index]['image'],
            musicList![index]['artist'],
          );
        },
      ),
    );
  }
}
