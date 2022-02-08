import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
// import 'package:news_app/services/constants.dart';
import 'package:news_app/services/function_helper.dart';

part 'general_state.dart';

class GeneralCubit extends Cubit<GeneralState> {
  GeneralCubit() : super(GeneralInitial());

  int navBarIndex = 0;
  List businessNews = [];
  List scienceNews = [];
  List technologyNews = [];

  void setNavBarIndex(int value) {
    navBarIndex = value;
  }

  Future<void> getStarted() async {
    //note the order
    // await getTechnologyNews();
    // await getScienceNews();
    await getBusinessNews();
  }

  Future<void> changeWidget({mustRefresh = false}) async {
    if (navBarIndex == 0) {
      await getBusinessNews(mustRefresh: mustRefresh);
    } else if (navBarIndex == 1) {
      await getScienceNews(mustRefresh: mustRefresh);
    } else if (navBarIndex == 2) {
      await getTechnologyNews(mustRefresh: mustRefresh);
    }
  }

  Future<void> getBusinessNews({bool mustRefresh = false}) async {
    if (businessNews.isEmpty || mustRefresh) {
      if (!mustRefresh) {
        emit(GeneralLoadingState());
      }
      try {
        // await Future.delayed(Duration(seconds: 5));
        Map<String, dynamic> response =
            await FunctionHelper.getNews('business');
        print('Business Request Done');
        businessNews = response['articles'];
        emit(GetBusinessNewsState(elements: businessNews));
      } catch (error) {
        emit(GeneralErrorState(errorMessage: error.toString()));
        emit(GetBusinessNewsState(elements: businessNews));
      }
    } else {
      emit(GetBusinessNewsState(elements: businessNews));
    }
  }

  Future<void> getScienceNews({bool mustRefresh = false}) async {
    if (scienceNews.isEmpty || mustRefresh) {
      if (!mustRefresh) {
        emit(GeneralLoadingState());
      }
      try {
        // await Future.delayed(Duration(seconds: 5));
        Map<String, dynamic> response = await FunctionHelper.getNews('science');
        print('Science Request Done');
        scienceNews = response['articles'];
        emit(GetScienceNewsState(elements: scienceNews));
      } catch (error) {
        emit(GeneralErrorState(errorMessage: error.toString()));
        emit(GetScienceNewsState(elements: scienceNews));
      }
    } else {
      emit(GetScienceNewsState(elements: scienceNews));
    }
  }

  Future<void> getTechnologyNews({bool mustRefresh = false}) async {
    if (technologyNews.isEmpty || mustRefresh) {
      if (!mustRefresh) {
        emit(GeneralLoadingState());
      }
      try {
        // await Future.delayed(Duration(seconds: 5));
        Map<String, dynamic> response =
            await FunctionHelper.getNews('technology');
        print('Technology Request Done');
        technologyNews = response['articles'];
        emit(GetTechnologyNewsState(elements: technologyNews));
      } catch (error) {
        emit(GeneralErrorState(errorMessage: error.toString()));
        emit(GetTechnologyNewsState(elements: technologyNews));
      }
    } else {
      emit(GetTechnologyNewsState(elements: technologyNews));
    }
  }
}
