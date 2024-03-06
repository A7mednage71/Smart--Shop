import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/utils/themedata/ThemData.dart';
import 'package:smartshop/core/utils/themedata/provider/themeData_provider.dart';
import 'package:smartshop/features/detailsScreen/presentation/views/details_screen.dart';
import 'package:smartshop/features/loginScreen/presentation/views/Login_Screen.dart';
import 'package:smartshop/features/viewedRecently/presentation/views/viewed_recently.dart';
import 'package:smartshop/features/wishlistScreen/presentations/views/wishlist_screen.dart';
import 'package:smartshop/rootScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const ShopApp());
  });
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeDataProvider(),
        )
      ],
      child:
          Consumer<ThemeDataProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Themedata.themedata(
              isDark: themeProvider.isDarkTheme(), context: context),
          home: const LoginScreen(),
          routes: {
            ProductDetailsScreen.routname: (context) =>
                const ProductDetailsScreen(),
            WishlistScreen.routname: (context) => const WishlistScreen(),
            ViewdRecentlyScreen.routname: (context) =>
                const ViewdRecentlyScreen(),
          },
        );
      }),
    );
  }
}
