import "package:flutter/material.dart";
import "package:food/auth/login_or_register.dart";
import "package:food/models/restaurant.dart";
import "package:food/themes/themes_provider.dart";
import "package:provider/provider.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        //themeprovider
        ChangeNotifierProvider(create: (context) => ThemesProvider()),

        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemesProvider>(context).themeData,
    );
  }
}
