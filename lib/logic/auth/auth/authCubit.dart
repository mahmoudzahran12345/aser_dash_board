// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart' as http;
// import 'package:repoapplication/logic/Api/api_methods/api_methods.dart';
// import 'package:repoapplication/logic/Api/endPoints/endPoints.dart';
// import 'package:repoapplication/logic/student/authcubit/registerCubit/modelGrades.dart';
// import 'package:repoapplication/logic/student/authcubit/registerCubit/authState.dart';
// import 'package:repoapplication/logic/teachear/cubitregister/authState.dart';
//
// import 'modelStages.dart';
//
// class RegisterStudentCubit extends Cubit<RegisterStudentState> {
//   RegisterStudentCubit() : super(RegisterStudentStateInatialState());
//
//   static RegisterStudentCubit get(context) => BlocProvider.of(context);
//   GetStagesModel? getStagesModel;
//   ModelGrades? modelGrades;
//
//   TextEditingController name = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController confirmPassword = TextEditingController();
//   // String Classroom = 'fc83ae36-60f1-4771-84bc-422cb941db85';
//   String? Classroom;
//
//   /////
//   String selectedStageId = '';
//   String selectedGradeId = '';
//
//   ///
//
//   String? value;
//   int val = 0;
//
//   void checkGender(value) {
//     emit(CheckGenderLoading());
//     val = value;
//     emit(CheckGenderSuccessful());
//   }
//
//   void Register() async {
//     emit(RegisterStudentStateLoadingState());
//     print(getStagesModel?.id);
//     print(modelGrades?.id);
//     print('--------------------');
//     print(selectedGradeId);
//     print(selectedStageId);
//
//     // try {
//     //   var response = await ApiConsumer().post(uri: EndPoint.register, rawData: {
//     //     'name': name.text.trim(),
//     //     'email': email.text.trim(),
//     //     'phoneNumber': phone.text.trim(),
//     //     'password': password.text,
//     //     'ConfirmPassword': confirmPassword.text,
//     //     'gender': val.toString(),
//     //     'stageId': getStagesModel?.id,
//     //     'gradeId': modelGrades?.id
//     //   });
//     //   var jsonBody = json.decode(response.body);
//     //   print(jsonBody.toString());
//     //   if (response.statusCode == 200) {
//     //     emit(RegisterStudentSuccessful());
//     //   } else {
//     //     emit(RegisterStudentError(error: jsonBody['message']));
//     //   }
//     // } catch (e) {
//     //   print(e.toString());
//     //   emit(RegisterStudentError(error: e.toString()));
//     // }
//   }
//
//   void selectStageId({required String id}) {
//     emit(CheckDropMenuLoading());
//     selectedStageId = id;
//     emit(CheckDropMenuSuccessful());
//   }
//
//   void selectGradeId({required String id}) {
//     emit(CheckDropMenuLoading());
//     selectedGradeId = id;
//     emit(CheckDropMenuSuccessful());
//   }
//
//   void EducationalStage(value1) {
//     emit(CheckDropMenuLoading());
//     value = value1;
//     emit(CheckDropMenuSuccessful());
//   }
//
//   List<GetStagesModel> Stages = [];
//
//   void GetStages() async {
//     try {
//       emit(GetStagesLoading());
//       Stages.clear();
//       var response = await ApiConsumer().get(
//         uri: EndPoint.stages,
//       );
//       List responseData = jsonDecode(response.body);
//       if (response.statusCode == 200) {
//         for (int i = 0; i < responseData.length; i++) {
//           getStagesModel = GetStagesModel.fromJson(responseData[i]);
//           Stages.add(getStagesModel!);
//         }
//       }
//       emit(GetStagesSuccessful());
//     } catch (e) {
//       print(e.toString());
//       emit(RegisterStudentError(error: e.toString()));
//     }
//   }
//
//   void EducationalLevel(level) {
//     emit(CheckDropMenuLoading());
//     Classroom = level;
//     emit(CheckDropMenuSuccessful());
//   }
//
//   List<ModelGrades> Grades = [];
//
//   void GetGrades(String id) async {
//     try {
//       emit(GetGradeLoading());
//       Grades.clear();
//       http.Response response = await http.get(
//         Uri.parse("http://mohamed127-001-site3.atempurl.com/api/Grades/$id"),
//       );
//       var responseData = jsonDecode(response.body);
//       print(responseData);
//       if (response.statusCode == 200) {
//         for (int i = 0; i < responseData.length; i++) {
//           modelGrades = ModelGrades.fromJson(responseData[i]);
//           Grades.add(modelGrades!);
//         }
//         Classroom = Grades[0].id.toString();
//         emit(GetGradeSuccessful());
//       }
//     } catch (e) {
//       print(e.toString());
//       emit(GetGradeError(error: e.toString()));
//     }
//   }
//   ////////////////////////////////////////////////////
//
//   bool isPassword = true;
//   void changePassword() {
//     emit(ChangePasswordRegisterLoading());
//     isPassword = !isPassword;
//     emit(ChangePasswordRegisterSuccessful());
//   }
// }
import 'dart:convert';

import 'package:aser_dash_board/repositories/api/api%20consumer/apiConsumer.dart';
import 'package:aser_dash_board/repositories/api/enpoint/enpoint.dart';
import 'package:aser_dash_board/repositories/shared/cacheNetwork.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authState.dart';



class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(FirstState());

  static AuthCubit get(context) => BlocProvider.of(context);

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController createPassword = TextEditingController();
  TextEditingController createPasswordConfirm = TextEditingController();
  TextEditingController emailForgotPassword = TextEditingController();
  TextEditingController verifyCode = TextEditingController();


  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  TextEditingController emailLogin = TextEditingController();


  // Register Method
  void Register() async {
    try {
      emit(AuthLoadingState());
      var response = await ApiConsumer().post(uri: EndPoint.register, rawData: {
        'name': name.text.trim(),
        'email': email.text.trim(),
        'phoneNumber': phone.text.trim(),
        'password': password.text,
        'ConfirmPassword': confirmPassword.text,
      });
      var jsonBody = json.decode(response.body);
      print(jsonBody.toString());
      if (response.statusCode == 200) {
        emit(AuthSuccessful());
      } else {
        emit(AuthError(error: jsonBody['message']));
      }
    } catch (e) {
      print(e.toString());
      emit(AuthError(error: e.toString()));
    }
  }

  ///////////////////////////////////////////////////////
// login Method

  void login() async {
    try {
      emit(LoginLoading());
      var response = await ApiConsumer().post(uri: EndPoint.login, rawData: {'email': emailLogin.text.trim(), 'password': passwordLogin.text});
      var jsonBody = json.decode(response.body);
      print(jsonBody.toString());
      print(jsonBody['data']['token']);
      if (response.statusCode == 200) {
        CacheNetwork.insertToCache(key: 'token', value: jsonBody['data']['token']);
        emit(LoginLoaded());
      } else {
        emit(LoginError(jsonBody["message"]));
      }
    } catch (e) {
      print(e.toString());
      emit(LoginError( e.toString(),));
    }
  }
}
