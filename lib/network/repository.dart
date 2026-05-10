import 'package:dio_api_management/network/dio_helper.dart';

class Repository {
  static final DioHelper _dioHelper=DioHelper();
  
  Future<dynamic> postAPi(Object reqModel) async{
    var response= await _dioHelper.postAPi(url: "https",requestBody: reqModel,isAuthRequired: true);
  }
}