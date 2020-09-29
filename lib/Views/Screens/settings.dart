import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Provider/ThemeProvider.dart';
import 'package:gemographyMobileChallenge/main.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) {
            return Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Change Theme',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).accentColor),
                  ),
                  Switch(
                    activeColor: Theme.of(context).accentColor,
                    value: theme,
                    onChanged: (value) {
                      setState(() {
                        themeProvider.toggleTheme();
                        theme = value;
                      });
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
