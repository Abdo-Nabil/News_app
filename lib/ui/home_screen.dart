import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/general_cubit/general_cubit.dart';
import 'package:news_app/logic/cubits/theme_cubit/theme_cubit.dart';
import 'package:news_app/services/custom_page_route.dart';
import 'package:news_app/services/toast_helper.dart';
import 'package:news_app/ui/search_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'components/error_bloc.dart';
import 'components/sliver_center_progress_indicator.dart';
import 'components/sliver_list_view_builder.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "HomeScreen";
  final bool isFirstTime;
  const HomeScreen({
    required this.isFirstTime,
  });
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool showDialog = widget.isFirstTime;

  @override
  Widget build(BuildContext context) {
    ToastHelper.initializeToast(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: 'Science',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.biotech_sharp),
            label: 'Technology',
          ),
        ],
        currentIndex:
            BlocProvider.of<GeneralCubit>(context, listen: true).navBarIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: (int index) async {
          BlocProvider.of<GeneralCubit>(context).setNavBarIndex(index);
          await BlocProvider.of<GeneralCubit>(context).changeWidget();
        },
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () async {
              await BlocProvider.of<GeneralCubit>(context)
                  .changeWidget(mustRefresh: true);
            },
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                  title: Text("News"),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.of(context).push(
                          CustomPageRoute(builder: (_) {
                            return SearchScreen();
                          }),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.brightness_4_rounded),
                      onPressed: () async {
                        await BlocProvider.of<ThemeCubit>(context)
                            .toggleTheme();
                      },
                    )
                  ],
                ),
                BlocConsumer<GeneralCubit, GeneralState>(
                  listener: (context, state) {
                    if (state is GeneralErrorState) {
                      ToastHelper.showToast(state.errorMessage);
                    }
                  },
                  builder: (context, state) {
                    if (state is GeneralLoadingState) {
                      return SliverCenterProgressIndicator();
                    } else if (state is GetBusinessNewsState) {
                      return SliverListViewBuilder(list: state.elements);
                    } else if (state is GetScienceNewsState) {
                      return SliverListViewBuilder(list: state.elements);
                    } else if (state is GetTechnologyNewsState) {
                      return SliverListViewBuilder(list: state.elements);
                    }
                    return SliverToBoxAdapter(child: ErrorBloc());
                  },
                ),
              ],
            ),
          ),
          showDialog
              ? FutureBuilder(
                  future: Future.delayed(
                      Duration(milliseconds: 2500), () => 'Done'),
                  builder: (BuildContext context, snap) {
                    if (snap.hasData) {
                      return Center(
                        child: AlertDialog(
                          title: Text('Hint !'),
                          content: Text('Pull to refresh the page.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('I know'),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setBool('isFirstTime', false);
                                showDialog = false;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      );
                    }
                    return Container();
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}
