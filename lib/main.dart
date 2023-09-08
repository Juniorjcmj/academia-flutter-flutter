import 'package:academia_flutter_flutter/pages/container/container_page.dart';
import 'package:academia_flutter_flutter/pages/home/home_page.dart';
import 'package:academia_flutter_flutter/pages/midia_quary/media_query._page.dart';
import 'package:academia_flutter_flutter/pages/rows_collumns/rows_columns.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Academia do flutter',
      // theme: ThemeData(       
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      routes: {
        HomePage.routName:      (_) => HomePage(),
        ContainerPage.routName :(_) => ContainerPage(),
        RowsColumns.routName:   (_) => RowsColumns(),
        MediaQueryPage.routName:(_) => MediaQueryPage()
      },
    );
  }
}

