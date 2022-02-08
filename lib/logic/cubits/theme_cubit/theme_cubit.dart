import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  ThemeMode? themeMode;

  Future toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool storedMode = prefs.getBool('isDarkMode')!;
    storedMode = !storedMode;
    await prefs.setBool('isDarkMode', storedMode);
    if (storedMode) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    emit(ToggleThemeState());
  }
}
