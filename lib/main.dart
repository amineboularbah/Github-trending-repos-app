import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:gemographyMobileChallenge/Provider/ThemeProvider.dart';
import 'package:gemographyMobileChallenge/Themes/Themes.dart';
import 'package:gemographyMobileChallenge/Views/Screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(
      create: (_) => RepoProvider(),
    ),
    Provider(
      create: (_) => ThemeProvider(),
    ),
  ], child: MyApp()));
}

int pageNumber = 1;
bool theme = false;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return ChangeNotifierProvider(
            create: (context) => RepoProvider(),
            child: MaterialApp(
              theme: themeProvider.themeName ? darkTheme() : lightTheme(),
              home: SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
