import 'package:movi/export.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
      backgroundColor: Color(C.dc.background),
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color(C.dc.primary),
      ),
      actionsIconTheme: IconThemeData(
        color: Color(C.dc.primary),
        size: 30,
      )),
  colorScheme: ColorScheme.dark(
    background: Color(C.dc.background),
    primary: Color(C.dc.primary),
    secondary: Color(C.dc.secondary),
    tertiary: Color(C.dc.tertiary),
  ),
);
