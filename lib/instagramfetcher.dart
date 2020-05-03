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

  Future<Map<String, List<String>>> getInstagramPhoto(String username) async {
    List<String> picFull = [];
    List<String> picRegular = [];
    List<String> picSmall = [];
    var u = await getInstagramData(username);
    if (u.edgeOwnerToTimelineMedia != null &&
        u.edgeOwnerToTimelineMedia.edges.length > 0) {
      u.edgeOwnerToTimelineMedia.edges.forEach((EdgeFelixVideoTimelineEdge e) {
        picFull.add("https://www.instagram.com/p/${e.node.shortcode}/media/?size=l");
        picRegular.add("https://www.instagram.com/p/${e.node.shortcode}/media/?size=m");
        picSmall.add("https://www.instagram.com/p/${e.node.shortcode}/media/?size=t");
      });
    }
    return {
      "thumbnail": picSmall,
      "medium": picRegular,
      "large": picFull,
    };
  }
}
