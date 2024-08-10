
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';


class HomeNavigatorCubit extends Cubit<HomeNavigatorState> {
  HomeNavigatorCubit() : super(HomeNavigatorInatialState());

  static HomeNavigatorCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;

  void onItemTapped(int index) {
    emit(HomeNavigatorLoadingState());
    selectedIndex = index;

    emit(HomeNavigatorSuccessfulState());
  }
}
