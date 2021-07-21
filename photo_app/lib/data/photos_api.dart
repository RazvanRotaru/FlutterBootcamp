import 'dart:convert';

import 'package:http/http.dart';
import 'package:photo_app/data/http_client.dart';
import 'package:photo_app/models/index.dart';
import 'package:photo_app/secrets.dart';

class PhotosApi {
  PhotosApi({String url = 'https://api.unsplash.com/search/photos'})
      : _url = url,
        _client = HttpClient.global;

  final String _url;
  final Client _client;

  Future<List<Photo>> getPhotos({required int page, String query = ''}) async {
    String url = 'https://api.unsplash.com/photos/?client_id=$key&page=$page';
    if (query.isNotEmpty) {
      url = '$_url?client_id=$key&page=$page&query=$query';
    }
    final Uri uri = Uri.parse(url);

    final Response resp = await _client.get(uri);

    if (resp.statusCode >= 400) {
      throw StateError('Unsuccessful connection: ${resp.body}');
    }

    List<dynamic> photos = <dynamic>[];
    if (query.isNotEmpty) {
      final Map<String, dynamic> body = jsonDecode(resp.body) as Map<String, dynamic>;
      photos = body['results'] as List<dynamic>;
    } else {
      photos = jsonDecode(resp.body) as List<dynamic>;
    }

    return photos //
        .map((dynamic json) => Photo.fromJson(json))
        .toList();
  }
}
