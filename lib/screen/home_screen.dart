import 'package:dio_api_management/network/repository.dart';
import 'package:flutter/material.dart';

import '../model/response_in_map_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  responseMap_in_dart responseInMapModel=responseMap_in_dart();
  bool loading=true;

  getData(){
    Repository().responseInMap().then((value){
      responseInMapModel=value;

      loading =false;

      setState(() {

      });

    });
    
  }

  @override
  void initState() {
    getData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api demonstrate"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: loading? Center(child: CircularProgressIndicator()):
      ListView.builder(
        itemCount: responseInMapModel.data?.length??0,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(responseInMapModel.data?[index].firstName??""),
            subtitle: Text(responseInMapModel.data?[index].email??""),
          );
        }

      ),

    );
  }
}

