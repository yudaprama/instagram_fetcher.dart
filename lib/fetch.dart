library instagramfetcher;

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'model.dart';

RegExp _regExp = new RegExp(
  '<script type="text\/javascript">window\._sharedData = (.*?);<\/script>',
  caseSensitive: false,
  multiLine: true,
);

/// InstagramFetcher
class InstagramFetcher {
  Future<User> getInstagramData(String username) async {
    Response response = await get("https://www.instagram.com/$username");
    if (response.statusCode == 200) {
      var string = _regExp.firstMatch(response.body);
      List<int> list = string.group(1).codeUnits;
      Uint8List bytes = Uint8List.fromList(list);
      final ig = instagramFromJson(bytes);
      return ig.entryData.profilePage[0].graphql.user;
    } else {
      throw Exception("Something went wrong");
    }
  }

  Future<List<String>> getInstagramPhoto(String username) async {
    var u = await getInstagramData(username);
    if (u.edgeOwnerToTimelineMedia != null && u.edgeOwnerToTimelineMedia.edges.length > 0) {
      return u.edgeOwnerToTimelineMedia.edges.map((EdgeFelixVideoTimelineEdge e) {
        return e.node.shortcode;
      }).toList();
    }
    return [];
  }
}
