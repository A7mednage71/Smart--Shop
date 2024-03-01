import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/utils/themedata/provider/themeData_provider.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeDataProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Ahmd Nageh"),
          SwitchListTile(
            value: themeProvider.isDarkTheme(),
            title:
                Text(themeProvider.isDarkTheme() ? "dark mode" : "Light mode"),
            onChanged: (value) {
              themeProvider.settheme(themevalue: value);
            },
          )
        ],
      ),
    );
  }
}
