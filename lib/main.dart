import 'package:counter_db/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ScreenHome(),
    );
  }
}

Future<void> showBottomSheet(BuildContext ctx) async {
  showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 500,
          color: Colors.pink,
          child: ListView(
            children: [
              Text('title'),
              TextButton(
                onPressed: () {
                  Navigator.of(ctx1).pop();
                },
                child: Text('close'),
              )
            ],
          ),
        );
      });
}
