import 'dart:convert';
import 'package:alie/src/models/data_request.dart';
import 'package:alie/src/models/data_response.dart';
import 'package:alie/src/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiClient<T> {

  Future<DataResponseModel> request(String url, DataRequestModel data) async {

    final uri = Uri.parse(url);

    var dataRequest = jsonEncode(data);

    final response = await http.post(uri, headers: {"content-type": "application/json"}, body: dataRequest);


    var responseBody = response.body;

    _logRequest(title: uri.toString().split("/").last, endpoint: uri.toString(), request: dataRequest, response: responseBody);

    print("resonse =>${jsonEncode(DataResponseModel.fromJson(jsonDecode(responseBody)))}");

    if(response.statusCode == 200){
      return DataResponseModel.fromJson(jsonDecode(responseBody));
    } else {
      return DataResponseModel(result: Result(hasError: true));
    }
  }


  _logRequest({title, endpoint, request, response}) {
    if (kDebugMode) {
      print("-------------------API CALL-----------------------------");
      print("-------------------$title-----------------------------");
      print("ENDPOINT: $endpoint");
      print("REQUEST: $request");
      print("RESPONSE: $response");
      print("-------------------API CALL-----------------------------");
    }
  }
}