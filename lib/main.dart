//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'pages/home_page.dart';

//  PARTS
//  PROVIDERS
final themeProvider = StateProvider<bool>((ref) => true);
//

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Theme with Riverpod',
      debugShowCheckedModeBanner: false,
      // color: Colors.red,
      theme: isLightTheme ? ThemeData.dark() : ThemeData.light(),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const HomePage(),
    );
  }
}
