import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
void printValue(dynamic value, {String tag=""}){
  try{
    var decodeJson =json.decode(value.toString()) as Map<String,dynamic>;
    log("Json output: $tag ${const JsonEncoder.withIndent(' ').convert(decodeJson)}\n");
  }catch (_){
    if(value is Map){
      log("Json output : $tag ${const JsonEncoder.withIndent('').convert(value)}\n");
    }
    else
    {
      if(kDebugMode)
      {
        print("Print output: $tag $value \n");
      }
    }
  }
}