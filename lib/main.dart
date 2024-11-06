import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vangaurd_groceries/bindings/product_binding.dart';
import 'package:vangaurd_groceries/constants/colors.dart';
import 'package:vangaurd_groceries/data/services/firebase_options.dart';
import 'package:vangaurd_groceries/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // onGenerateRoute: (settings) {
      //   // Parse the URI to check for query parameters
      //   final uri = Uri.parse(settings.name!);
      //
      //   // Check if the route is `productdetails` and has a `productId` query parameter
      //   if (uri.path == Routes.productDetailsScreen && uri.queryParameters.containsKey('productId')) {
      //     final productId = uri.queryParameters['productId']!;
      //     return MaterialPageRoute(
      //       builder: (context) => ProductDetailsScreen(productId: productId),
      //     );
      //   }
      //
      //   // Default fallback for undefined routes (optional)
      //   return MaterialPageRoute(
      //     builder: (context) => ErrorScreen(message: "Page not found"),
      //   );
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      // initialRoute: '/first-screen',
      // getPages: [
      //   GetPage(name: '/first-screen', page: () => FirstScreen()),
      //   GetPage(name: '/second-screen', page: () => SecondScreen()),
      // ],
      routes: Routes.getRoutes(),
      initialRoute: Routes.home,
      initialBinding: ProductBinding(),
      // onGenerateRoute: Routes.onGenerateRoute, // Handle route generation
    );
  }
}

