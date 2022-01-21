import 'package:flutter/material.dart';
import 'package:viper/pages/cart_page.dart';
import 'package:viper/pages/detail_chat_page.dart';
import 'package:viper/pages/edit_profile_page.dart';
import 'package:viper/pages/home/main_page.dart';
import 'package:viper/pages/product_page.dart';
import 'package:viper/pages/sign_in_page.dart';
import 'package:viper/pages/sign_up_page.dart';
import 'package:viper/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
