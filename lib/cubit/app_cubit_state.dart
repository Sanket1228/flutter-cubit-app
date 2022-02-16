import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/model/document.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  List<Document> places;

  LoadedState({required this.places});

  @override
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  Document place;

  DetailState({required this.place});

  @override
  // TODO: implement props
  List<Object> get props => [place];
}
