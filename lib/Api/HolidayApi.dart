import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../Models/Country.dart';

class HolidayApi {
  Future<List<Country>> getCountries() async {
    final response =
        await http.get(Uri.parse("https://openholidaysapi.org/Countries"));

    List<Country> decodedJson = (json.decode(response.body) as List)
    .map((e){
      return  Country(isoScope: e['isoCode']);
    }).toList();


  

    return decodedJson;
  }
}
