// ignore_for_file: prefer_interpolation_to_compose_strings

class EndPoint {
  static const String baseUrl = 'https://oranus-lms.com';
  static const String apiUrl = '$baseUrl/api/';
  static const String getAllAcademies = apiUrl + 'Academies/GetAllAcademies';
  static const String getAllStudents = apiUrl + 'Students/GetAllStudents';
  static const String getConfirmedTeacher = apiUrl + 'Teachers/ConfirmedTeachers';
  static const String getPendingTeacher = apiUrl + 'Teachers/PendingTeachers';
  static const String getStages = apiUrl + 'Stages';
  static const String getGradesByStageId = apiUrl + 'Grades/';
  static const String getTeacherById = apiUrl + 'Teachers/GetTeacherForAdmin/';


  //////////////////////////////////////////////////////////////////////////////////////////////////

  static String register = "${apiUrl}Admins/register";
  static String login = "${apiUrl}Accounts/login";
  static String getAllCountStudents = "${apiUrl}Students/Count";
  static String getAllCountTeachers = "${apiUrl}Teachers/Count";
  static String getAllCountAcademy = "${apiUrl}Academies/Count";
  static String getBlockTeacher = "${apiUrl}BlockedUsers/BlockedTeachers";
  static String getBlockStudents = "${apiUrl}BlockedUsers/BlockedStudents";






}
