import 'package:academia_flutter_flutter/pages/botoes_rotacao_texto/botoes_rotacao_texto.dart';
import 'package:academia_flutter_flutter/pages/container/container_page.dart';
import 'package:academia_flutter_flutter/pages/home/home_page.dart';
import 'package:academia_flutter_flutter/pages/layout_builder/layout_builder_page.dart';
import 'package:academia_flutter_flutter/pages/media_query/media_query._page.dart';
import 'package:academia_flutter_flutter/pages/rows_collumns/rows_columns.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false ,//!kReleaseMode,
    builder: (_) => MyApp(),
  ));
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
       locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, 
      routes: {
        HomePage.routName: (_) => HomePage(),
        ContainerPage.routName: (_) => ContainerPage(),
        RowsColumns.routName: (_) => RowsColumns(),
        MediaQueryPage.routName: (_) => MediaQueryPage(),
        LayoutBuilderPage.routName :(_) => LayoutBuilderPage(),
        BotoesRotacaoTexto.routName: (_) => BotoesRotacaoTexto()
      },
    );
  }
}
