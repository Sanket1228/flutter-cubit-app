import 'package:bloc/bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_state.dart';
import 'package:flutter_cubit/model/document.dart';
import 'package:flutter_cubit/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getData();
      emit(LoadedState(places:places));
    } catch (e) {}
  }

  detailState(Document place){
    emit(DetailState(place: place));
  }

  goHome(){
    emit(LoadedState(places: places));
  }
}
