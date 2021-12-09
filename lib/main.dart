import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/general_cubit/general_cubit.dart';
import 'package:news_app/logic/cubits/search_cubit/search_cubit.dart';
import 'package:news_app/services/function_helper.dart';
import 'package:news_app/the_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logic/bloc_observer.dart';
import 'logic/cubits/theme_cubit/theme_cubit.dart';

// ad1740e8b97346428f7e9220eb4df190
//https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=ad1740e8b97346428f7e9220eb4df190

Future<bool> isFirstTimeOpeningApp() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool? isFirstTime = prefs.getBool('isFirstTime');
  if (isFirstTime == null) {
    await prefs.setBool('isFirstTime', true);
    return true;
  } else if (isFirstTime == true) {
    return true;
  }
  return false;
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //disable landscape mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //
  bool isFirstTime = await isFirstTimeOpeningApp();
  //the (font size factor, theme mode, picked color)must be initialized here ==>
  final ThemeMode themeMode = await FunctionHelper.getThemeMode();
  //
  Bloc.observer = MyBlocObserver();
  //
  runApp(
    MyApp(
      themeMode: themeMode,
      isFirstTime: isFirstTime,
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeMode themeMode;
  final bool isFirstTime;
  const MyApp({
    required this.themeMode,
    required this.isFirstTime,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GeneralCubit>(
          create: (BuildContext context) => GeneralCubit()..getStarted(),
        ),
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
        BlocProvider<SearchCubit>(
          create: (BuildContext context) => SearchCubit()..search(''),
        ),
      ],
      child: TheMaterialApp(
        themeMode: themeMode,
        isFirstTime: isFirstTime,
      ),
    );
  }
}
