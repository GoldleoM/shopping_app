import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';
// import 'package:shop_app/detail_page.dart';
import 'pages/homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider( 
        create: (context) => CartProvider(),
      ),
      ],
      child: MaterialApp(
          home: const Homepage(),
          // home: DetailsPage(product: products[0],),
          theme: ThemeData(
            appBarTheme:const AppBarTheme(
              titleTextStyle:  TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              hintStyle: TextStyle(fontWeight: FontWeight.bold, 
              fontSize: 16),
              prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
            ),
            fontFamily: 'Lato',
             textTheme: const TextTheme(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
                titleMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                bodySmall: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(254, 206, 1, 1),
            primary: const Color.fromRGBO(254, 206, 1, 1) ,
            surface: Colors.white,
            ),
            useMaterial3: true,
          ),
        ),
    );
  }
}
