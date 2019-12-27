import 'package:flutter/material.dart';
import 'package:http/io_client.dart' as ioclient;
import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:todo/pages/page.scriptlist.dart';

 String urlMain = 'https://10.0.2.2/fmi/data/v1/databases/';
  String dbName = 'Flutter';
  String tokenUrl = urlMain + dbName + '/sessions';
  String layoutName = 'r_Flutter';
  String scriptLayout = '/layouts/' + layoutName + '/script/';
  String scriptName = 'getScripts'; 
  //String scriptUrl = urlMain + dbName + scriptLayout + scriptName;
  String scriptUrl = urlMain + dbName + '/scripts/';

Future<String> getFMScripts(user, password) async {

  String base64auth = base64.encode(utf8.encode(user.text + ':' + password.text));
  String basicAuthHeader = 'Basic ' + base64auth;
  
  var _httpClient = HttpClient();
  _httpClient.badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
  var _ioClient = ioclient.IOClient(_httpClient);

  final tokenResponse = await _ioClient.post(
    tokenUrl,
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader : basicAuthHeader
    }
  );
 
  var decode = json.decode(tokenResponse.body);
  String token = decode['response']['token'];

  final scriptResponse = await _ioClient.get(
    scriptUrl,
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader : 'Bearer ' + token
    }
  );

  _ioClient.close();
 

 //todo
  // String scriptResult = (json.decode(scriptResponse.body)['response']['scriptResult']);
  // List<String> scriptsList = scriptResult.split(";");
  
  //  runApp(ScriptsList(
  //   scripts: scriptsList
  // ));
  
  // return scriptResult;
   String scriptResult = scriptResponse.body;
  print (scriptResult);
}