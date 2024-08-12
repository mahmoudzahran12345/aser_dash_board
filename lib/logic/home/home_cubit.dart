
import 'dart:convert';
import 'dart:io';

import 'package:aser_dash_board/model/blogType/blogType.dart';
import 'package:aser_dash_board/model/systemProfits/systemProfits.dart';
import 'package:aser_dash_board/repositories/api/api%20consumer/apiConsumer.dart';
import 'package:aser_dash_board/repositories/api/enpoint/enpoint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInatialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController addtionalDate = TextEditingController();
  final storage = new FlutterSecureStorage();




  File? image ;
  Future getImage(ImageSource imageSource) async {
    var pickerFile = await ImagePicker().pickImage(source: imageSource);
    if (pickerFile != null) {
      image = File(pickerFile.path);
      emit(SuccessfulImage());
    } else {
      emit(ErrorImage());
    }
  }



  void PickDate(context,TextEditingController controller) async {
    emit(PickDateBlocLoading());
    DateTime? pickDate = await showDatePicker(
      //selectableDayPredicate: ,
        context: context,

        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (pickDate != null) {
      controller.text = pickDate.toString().split(" ")[0];
    }
    emit(PickDateBlocSSuccessfulState());
  }

  List hours = ["22-4-2024","4-8-3695","1-4-4562","2-4-2023",];
  /// choose hours

  List <String> month = ["January","February","March","April","May","June","July","August","September","October","November","December"];

  List <String> year = ["2020","2021","2022","2023","2024"];

  String ? fix;
  String? chooseYears;
  void chooseYearFunction(value) {
    emit(StartDateChooseYears());
    chooseYears = value;
    emit(EndStartChooseYears());
  }

  String? choosesMonth;
  void chooseMonthFunction(value) {
    emit(StartDateChooseMonth());
    choosesMonth = value;
    emit(EndStartChooseMonth());
  }

  void load()async{
    await getSystemProfits();
    await getBlogType();


  }

  SystemProfitModel? systemProfit;
  /// get system profits
  Future getSystemProfits() async {

    emit(GetSystemProfitsLoading());

    final token = await storage.read(key: 'token');
    print("tokn is person blog = $token");
    http.Response response = await ApiConsumer().get(uri:
     fix == null ?
     "${EndPoint.apiUrl}Companies/SystemProfits" :
      "${EndPoint.apiUrl}Companies/SystemProfits?MonthOrYear=Month&Month=$fix"
        , token: token);
    var responseData = await json.decode(response.body);
    if (response.statusCode == 200) {
      systemProfit = SystemProfitModel.fromJson(responseData);
      emit(GetSystemProfitsByIdSuccessful());
    } else {
      print(response.body);
      emit(GetSystemProfitsError(response.body));
    }
  }

  /// get blog type
  BlogTypeModel? blogTypeModel;
  Future getBlogType() async {

    emit(GetBlogLoading());

    final token = await storage.read(key: 'token');
    print("tokn is person blog = $token");
    http.Response response = await ApiConsumer().get(uri:

    "${EndPoint.apiUrl}BlogCategories"
        , token: token);
    var responseData = await json.decode(response.body);
    if (response.statusCode == 200) {
      blogTypeModel = BlogTypeModel.fromJson(responseData);

      emit(GetBlogByIdSuccessful());
    } else {
      print(response.body);
      emit(GetBlogError(response.body));
    }
  }



  /// choose type
  String? chosseTypeBlog;
  void chhoseBlogType(String value) {
    emit(chooseTypeLoading());
    chosseTypeBlog = value;
    emit(chooseTypeLoaded());
  }



  String? choseMonth ;


  void choseMonthFunction(value) {

    choseMonth = value;
    emit(ChoseMonthLoaded());
  }


  String? choseHours ;
  void choseHoursFunction(value) {
    emit(StartDate());
    choseHours = value;
    emit(EndStart());
  }

  int selectedIndex = 0;
String? accomandtionType;
  void changeAccomandtionype(value) {
    emit(StartDate());
    accomandtionType = value;
    emit(EndStart());
  }
  String? goverment;
  void changeGovernment(value) {
    emit(StartDate());
    goverment = value;
    emit(EndStart());
  }

  String? status;
  void changeStatus(value) {
    emit(StartDate());
    status = value;
    emit(EndStart());
  }



}
