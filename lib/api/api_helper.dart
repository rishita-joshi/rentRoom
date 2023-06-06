import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rent_a_room/api/network_constant.dart';
import 'package:rent_a_room/api/network_result.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Map<String, String>? _headers;

  Future<NetworkResult> callPostApi(
    String path,
    dynamic params,
    bool isLoader, {
    exitOn401 = true,
    baseUrl,
    Function? onRetryInternet,
    show400pop = true,
  }) async {
    var callingURL = "";
    if (baseUrl != null) {
      callingURL = "$baseUrl/$path";
    } else {
      callingURL = "${NetworkConstant.BASE_URL_API}/$path";
    }
    _headers = await _createHeaders();
    var parameter = json.encode(params);

    try {
      var resp = await http
          .post(Uri.parse(callingURL), body: parameter, headers: _headers)
          .timeout(const Duration(seconds: 30), onTimeout: () {
        print("Time Out");
        return http.Response('408 Time Out', 408);
      });

      if (resp.statusCode == 200) {
        return Future.value(NetworkResult.success(resp.body));
      } else if (resp.statusCode == 401 || resp.statusCode == 403) {
        if (exitOn401) {
          return Future.value(NetworkResult.error(resp.body));
        } else if (resp.statusCode == 405) {
          return Future.value(NetworkResult.error(resp.body));
        } else if (resp.statusCode == 404) {
          return Future.value(NetworkResult.notFound404());
        } else {
          print("onError");
          return Future.value(NetworkResult.error(resp.body));
        }
      }
    } catch (e) {
      print(e.toString());
      return Future.value(NetworkResult.error(e.toString()));
    }
    return Future.value(NetworkResult.error("error"));
  }

  _createHeaders() {
    return {
      "Content-Type": "application/json",
      "accept": "application/json",
    };
  }
}
