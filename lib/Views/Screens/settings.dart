import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Provider/ThemeProvider.dart';
import 'package:gemographyMobileChallenge/main.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(),
              child: Align(
                alignment: Alignment.topLeft,
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
                    ToggleSwitch(
                        minWidth: 70.0,
                        cornerRadius: 10,
                        initialLabelIndex: themeProvider.getTheme ? 1 : 0,
                        activeBgColor: Theme.of(context).accentColor,
                        activeFgColor: Theme.of(context).primaryColor,
                        inactiveBgColor: Colors.grey.withOpacity(0.20),
                        inactiveFgColor: Theme.of(context).accentColor,
                        labels: ['Dark', 'Light'],
                        onToggle: (index) {
                          themeProvider.toggleTheme();
                        }),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
