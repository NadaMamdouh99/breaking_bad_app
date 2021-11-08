import 'package:bloc_breaking_bad/views/home/models/model.dart';
import 'package:bloc_breaking_bad/views/home/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController extends Cubit<HomeStates>{

  HomeController() : super(HomeInit());

  static HomeController of(context) => BlocProvider.of(context);
  var _dio= new Dio();
  List <HomeModel> list1=[];

  Future<void> getData() async{
    emit(HomeLoading());
    try{
      print('getting data');
      final response=await _dio.get('https://www.breakingbadapi.com/api/characters');
      print(response.data);
      final data=response.data as List;
      data.forEach((element) {
        HomeModel homeModel= HomeModel.fromJson(element);
        list1.add(homeModel);
      });
    }catch (e) {
      print(e.toString());
    }
    emit(HomeInit());
    //return response.data;
    //print(response.data);
  }
}