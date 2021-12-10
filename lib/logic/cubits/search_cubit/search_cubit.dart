import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/services/function_helper.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  late String word;
  Future<void> search(String searchedWord) async {
    print('called');
    word = searchedWord;
    emit(SearchLoadingState());
    try {
      var response = await FunctionHelper.getSearchResults(searchedWord);
      List articles = response['articles'];
      emit(GetSearchResults(list: articles));
    } catch (error) {
      emit(SearchErrorState(errorMessage: error.toString()));
    }
  }
}
