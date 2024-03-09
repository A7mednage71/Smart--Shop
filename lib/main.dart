import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/core/manager/product_provider.dart';
import 'package:smartshop/core/utils/themedata/ThemData.dart';
import 'package:smartshop/core/utils/themedata/provider/themeData_provider.dart';
import 'package:smartshop/features/SearchScreen/presentation/views/SearchScreen.dart';
import 'package:smartshop/features/detailsScreen/presentation/views/details_screen.dart';
import 'package:smartshop/features/forgetPasswordScreen/presentation/views/forget_password_screen.dart';
import 'package:smartshop/features/ordersscreen/presentation/views/orders_screen.dart';
import 'package:smartshop/features/registerscreen/presentation/views/register_screen.dart';
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
          create: (_) => ThemeDataProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
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
            ViewdRecentlyScreen.routname: (context) =>
                const ViewdRecentlyScreen(),
            RegisterScreen.routname: (context) => const RegisterScreen(),
            OrdersScreen.routname: (context) => const OrdersScreen(),
            ForgetPasswordScreen.routname: (context) =>
                const ForgetPasswordScreen(),
            SearchScreen.routname: (context) => const SearchScreen(),
          },
        );
      }),
    );
  }
}
