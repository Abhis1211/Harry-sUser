import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../config/Urls/Urls.dart';

var dio = new Dio();

class Api {
  final box = GetStorage();

  apicall_post(apiname, params, context) async {
    try {
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print(Urls().baseurl + apiname);
        var response = await dio.post(
          Urls().baseurl + apiname,
          data: params,
          options: Options(
            headers: {
              "Accept-Language": "en-US",
              // "Authorization": "Bearer " + box.read("accesstoken")
            },
            validateStatus: (status) {
              return status! < 500;
            },
          ),
        );
        print(response.data);
        return response.data;
      } else {
        final snackBar = SnackBar(
          content: const Text('Check Your Internet ! '),
          action: SnackBarAction(
            label: 'ok',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } on DioError catch (e) {
      print(e);
      if (e.response!.statusCode == 404) {
        print(e.response!.statusCode);
      } else {
        print(e.message);
        // print(e.request);
      }
    }
    return {"status": "n", "message": "Registered failed", "data": {}};
  }

  apicall_get(apiname, context) async {
    try {
      final result = await InternetAddress.lookup('google.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("url=" + Urls().baseurl + apiname);

        var response = await dio.get(
          Urls().baseurl + apiname,
        );

        return response;
      } else {
        final snackBar = SnackBar(
          content: const Text('Check Your Internet !'),
          action: SnackBarAction(
            label: 'ok',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print(e.toString());

      // if (e.response!.statusCode == 404) {
      //   print(e.response!.statusCode);
      // } else {
      //   print(e.message);
      //   // print(e.request);
      // }
    }
    return {"status": "n", "message": "Registered failed", "data": {}};
  }
}
