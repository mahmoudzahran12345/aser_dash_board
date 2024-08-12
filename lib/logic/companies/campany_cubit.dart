//
// import 'dart:io';
//
// import 'package:aser_dash_board/logic/activity_cubit/activity_state.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
//
//
//
// class CompainyCubit extends Cubit<CompainyState> {
//   CompainyCubit() : super(HomeInatialState());
//
//   static CompainyCubit get(context) => BlocProvider.of(context);
//
//   TextEditingController startDate = TextEditingController();
//   TextEditingController endDate = TextEditingController();
//   TextEditingController addtionalDate = TextEditingController();
//
//   int change = 0 ;
//   //
//   void toggle(int check) {
//
//     change = check;
//     emit(changeBackGround());
//   }
//
//   File? image ;
//   Future getImage(ImageSource imageSource) async {
//     var pickerFile = await ImagePicker().pickImage(source: imageSource);
//     if (pickerFile != null) {
//       image = File(pickerFile.path);
//       emit(SuccessfulImage());
//     } else {
//       emit(ErrorImage());
//     }
//   }
//
//
//
//   void PickDate(context,TextEditingController controller) async {
//     emit(PickDateBlocLoading());
//     DateTime? pickDate = await showDatePicker(
//       //selectableDayPredicate: ,
//         context: context,
//
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2000),
//         lastDate: DateTime(2100));
//
//     if (pickDate != null) {
//       controller.text = pickDate.toString().split(" ")[0];
//     }
//     emit(PickDateBlocSSuccessfulState());
//   }
//
//   List hours = ["22-4-2024","4-8-3695","1-4-4562","2-4-2023",];
//   /// choose hours
//   String? choseHours ;
//   void choseHoursFunction(value) {
//     emit(StartDate());
//     choseHours = value;
//     emit(EndStart());
//   }
//
//   int selectedIndex = 0;
//   String? accomandtionType;
//   void changeAccomandtionype(value) {
//     emit(StartDate());
//     accomandtionType = value;
//     emit(EndStart());
//   }
//   String? goverment;
//   void changeGovernment(value) {
//     emit(StartDate());
//     goverment = value;
//     emit(EndStart());
//   }
//
//   String? status;
//   void changeStatus(value) {
//     emit(StartDate());
//     status = value;
//     emit(EndStart());
//   }
//   int singleRoomNum = 0;
//
//   changeSingleRoomNum({bool isAdded = false}) {
//     if (isAdded) {
//       singleRoomNum++;
//     } else {
//       if (singleRoomNum != 0) {
//         singleRoomNum--;
//       }
//     }
//     emit(ChangeSingleRoom());
//   }
//
//
//
//
// }
