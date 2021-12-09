part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoadingState extends SearchState {}

class GetSearchResults extends SearchState {
  final List list;
  GetSearchResults({
    required this.list,
  });
}

class SearchErrorState extends SearchState {
  final String errorMessage;
  SearchErrorState({
    required this.errorMessage,
  });
}
