import 'package:flutter/material.dart';
import 'package:my_first_layout/widget/buttom_section.dart';
import 'package:my_first_layout/widget/text_widget.dart';
import 'package:my_first_layout/widget/tittle_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              const TitleSection(),
              const ButtonSection(),
              const TextSection(),
            ],
          )),
    );
  }
}
