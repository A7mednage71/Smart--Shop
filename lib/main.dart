import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/utils/themedata/ThemData.dart';
import 'package:smartshop/core/utils/themedata/provider/themeData_provider.dart';
import 'package:smartshop/features/detailsScreen/details_screen.dart';
import 'package:smartshop/features/wishlistScreen/wishlist_screen.dart';
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
          home: const RootPage(),
          routes: {
            ProductDetailsScreen.routname: (context) =>
                const ProductDetailsScreen(),
            WishlistScreen.routname: (context) => const WishlistScreen(),
          },
        );
      }),
    );
  }
}
