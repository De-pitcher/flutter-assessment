import 'package:flutter/material.dart';
import 'package:flutter_assessment/utils/app_theme.dart';
import 'package:flutter_assessment/views/contacts_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme(context),
      home: const ContactsPage(),
    );
  }
}