part of 'general_cubit.dart';

@immutable
abstract class GeneralState {}

class GeneralInitial extends GeneralState {}

class GeneralLoadingState extends GeneralState {}

class GeneralErrorState extends GeneralState {
  final String errorMessage ;
  GeneralErrorState({
    required this.errorMessage,
  });
}

class GetBusinessNewsState extends GeneralState {
  final List elements;

  GetBusinessNewsState({
    required this.elements,
  });
}

class GetScienceNewsState extends GeneralState {
  final List elements;

  GetScienceNewsState({
    required this.elements,
  });
}

class GetTechnologyNewsState extends GeneralState {
  final List elements;

  GetTechnologyNewsState({
    required this.elements,
  });
}
