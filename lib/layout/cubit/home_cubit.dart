import 'package:bloc/bloc.dart';
import 'package:task/layout/cubit/home_cubit_states.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitState());
  static  HomeCubit globalData;



  int _bottomNavItemIndex = 0;
  void setBottomNavItemIndex(int index) {
      _bottomNavItemIndex = index;
      emit(HomeBottomNavIndexState());
  }

  int getBottomNavItemIndex() {
    return _bottomNavItemIndex;
  }

}
