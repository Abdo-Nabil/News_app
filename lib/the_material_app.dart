import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/theme_cubit/theme_cubit.dart';
import 'package:news_app/services/my_themes.dart';
import 'package:news_app/ui/home_screen.dart';
import 'package:news_app/ui/search_screen.dart';

class TheMaterialApp extends StatelessWidget {
  final ThemeMode themeMode;
  final bool isFirstTime;

  const TheMaterialApp({
    required this.themeMode,
    required this.isFirstTime,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeMode? selectedThemeMode =
        BlocProvider.of<ThemeCubit>(context, listen: true).themeMode;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      themeMode: selectedThemeMode ?? themeMode,
      theme: MyThemes.getLightTheme(
        context: context,
      ),
      darkTheme: MyThemes.getDarkTheme(
        context: context,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(
              isFirstTime: isFirstTime,
            ),
        SearchScreen.routeName: (context) => SearchScreen(),
      },
    );
  }
}
