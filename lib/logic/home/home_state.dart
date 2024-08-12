abstract class HomeState{

}
class HomeInatialState extends HomeState{}
class StartDate extends HomeState{}

class EndStart extends HomeState{}

class ChoseMonthLoaded extends HomeState{}


class PickDateBlocLoading extends HomeState{}

class PickDateBlocSSuccessfulState extends HomeState{}
class SuccessfulImage extends HomeState{}
class ErrorImage extends HomeState{}

class EndStartChooseYears extends HomeState{}
class StartDateChooseYears extends HomeState{}
class EndStartChooseMonth extends HomeState{}
class StartDateChooseMonth extends HomeState{}
class GetSystemProfitsLoading extends HomeState{}

class GetSystemProfitsByIdSuccessful extends HomeState{}

class GetSystemProfitsError extends HomeState{
  final String error;

  GetSystemProfitsError(this.error);
}

///
class GetBlogLoading extends HomeState{}

class GetBlogByIdSuccessful extends HomeState{}

class GetBlogError extends HomeState{
  final String error;

  GetBlogError(this.error);
}


class chooseTypeLoading extends HomeState{}

class chooseTypeLoaded extends HomeState{}
