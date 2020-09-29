import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:gemographyMobileChallenge/Themes/Themes.dart';
import 'package:gemographyMobileChallenge/Views/Screens/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

int pageNumber = 1;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RepoProvider(),
      child: MaterialApp(theme: lightTheme(), home: SplashScreen()),
    );
  }
}
