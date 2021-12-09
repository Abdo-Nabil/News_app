import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/search_cubit/search_cubit.dart';
import 'package:news_app/services/toast_helper.dart';
import 'package:news_app/ui/components/sliver_list_view_builder.dart';
import 'package:news_app/ui/components/sliver_search_app_bar.dart';
import 'package:news_app/ui/components/sliver_center_progress_indicator.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "SearchScreen";
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverSearchAppBar(),
          BlocConsumer<SearchCubit, SearchState>(
            listener: (context, state) {
              if (state is GetSearchResults &&
                  BlocProvider.of<SearchCubit>(context).word.isNotEmpty) {
                ToastHelper.showStackedToast('found ${state.list.length}');
              } else if (state is SearchErrorState) {
                ToastHelper.showStackedToast(state.errorMessage);
              }
            },
            builder: (context, state) {
              if (state is SearchLoadingState) {
                return SliverCenterProgressIndicator();
              } else if (state is GetSearchResults) {
                return SliverListViewBuilder(list: state.list);
              }
              return SliverToBoxAdapter(child: Container());
            },
          ),
        ],
      ),
    );
  }
}
