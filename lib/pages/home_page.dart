//  //
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//  Import FILES
import '../main.dart';
//  PARTS
//  PROVIDERS

//

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page with Theme'),
      ),
      body: Center(
        child: Switch(
          value: isLightTheme,
          onChanged: (value) => ref.read(themeProvider.notifier).state = value,
        ),
      ),
    );
  }
}
