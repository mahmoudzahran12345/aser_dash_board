
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInatialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  TextEditingController startDate = TextEditingController();
  TextEditingController endDate = TextEditingController();
  TextEditingController addtionalDate = TextEditingController();



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
