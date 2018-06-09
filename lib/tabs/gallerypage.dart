import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../model/photo.dart';
import '../const.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  List<Photo> photos = [];
  Map map;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    this.getJson();
  }

  Future getJson() async {
    var response = await http.get(flickrUrl);

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      List list = body["photos"]["photo"];
      List<Photo> fotos = list.map((p) => new Photo.fromMap(p)).toList();

      this.setState(() {
        photos = fotos;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: _isLoading
            ? CircularProgressIndicator(
                backgroundColor: Colors.purple,
              )
            : ListView.builder(
                itemCount: photos == null ? 0 : photos.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                      child: new Image.network(photos[index].mediumImageUrl));
                }));
  }
}
