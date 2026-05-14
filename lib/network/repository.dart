import 'package:dio_api_management/network/dio_helper.dart';

import '../model/response_in_map_model.dart';

class Repository {
  static final DioHelper _dioHelper=DioHelper();
  
  // Future<dynamic> postAPi(Object reqModel) async{
  //   var response= await _dioHelper.postAPi(url: "https",requestBody: reqModel,isAuthRequired: true);
  // }
  
  
  Future<responseMap_in_dart> responseInMap()async{
    Map<String,dynamic> response=await _dioHelper.getApi(url: "https://reqres.in/api/users?page=2");

    return responseMap_in_dart.fromJson(response);
  }
  
}