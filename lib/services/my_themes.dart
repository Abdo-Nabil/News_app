import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemes {
  static ThemeData getLightTheme({
    required BuildContext context,
  }) {
    Map<int, Color> colorMap = {
      50: Color.fromRGBO(0, 103, 117, .1),
      100: Color.fromRGBO(0, 103, 117, .2),
      200: Color.fromRGBO(0, 103, 117, .3),
      300: Color.fromRGBO(0, 103, 117, .4),
      400: Color.fromRGBO(0, 103, 117, .5),
      500: Color.fromRGBO(0, 103, 117, .6),
      600: Color.fromRGBO(0, 103, 117, .7),
      700: Color.fromRGBO(0, 103, 117, .8),
      800: Color.fromRGBO(0, 103, 117, .9),
      900: Color.fromRGBO(0, 103, 117, 1),
    };
    MaterialColor primarySwatch =
        MaterialColor(Color.fromRGBO(0, 103, 117, 1).value, colorMap);

    final ThemeData themeData = ThemeData(
      primarySwatch: primarySwatch,
      scrollbarTheme: ScrollbarThemeData(
        radius: Radius.circular(10),
        // thickness: MaterialStateProperty.all(20),
        //isAlwaysShown: true, // it cause a problem 'exception' ,tackle it later
        //thickness: MaterialStateProperty.all(8),  //default is 8
        thumbColor: MaterialStateProperty.all(
          primarySwatch.shade300,
        ),
      ),
      iconTheme: IconThemeData(
        color: primarySwatch,
        // size: 24 * fontFactor,
      ),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: primarySwatch.shade200,
        selectionHandleColor: primarySwatch.shade300,
      ),
      appBarTheme: AppBarTheme(
        //ToDo : Note, without next line theme will not provided !!!
        backwardsCompatibility: false,
        textTheme: Theme.of(context).textTheme,
        //ToDo : for white icons in status bar use ==>
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),

      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 25,
      ),
    );
    //
    return themeData;
  }

  static ThemeData getDarkTheme({
    required BuildContext context,
  }) {
    //note: that app font size changes automatically with the system setting

    final MaterialColor primarySwatch = Colors.teal;

    final ThemeData themeData = ThemeData(
      primarySwatch: primarySwatch,
      primaryColorLight: Colors.grey[700],
      //accentColor: Colors.tealAccent,

      iconTheme: IconThemeData(
        //color: primarySwatch,
        color: Colors.white70,
      ),

      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      appBarTheme: AppBarTheme(
        //ToDo : Note, without next line theme will not provided !!!
        backwardsCompatibility: false,
        textTheme: Theme.of(context).textTheme,
        // color: Color.fromARGB(255, 34, 34, 34), //default appBar color
      ),

      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primarySwatch,
        brightness: Brightness.dark,
      ),

      //
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
      ),
      //
    );
    return themeData;
  }
}
