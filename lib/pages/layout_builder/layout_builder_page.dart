// ignore_for_file: prefer_const_declarations, avoid_print

import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  static final String routName = '/layout_builder';

  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder')),
      body: Center(
        child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(                
                color: Colors.red,
                width: constraints.maxWidth * 0.90,
                height: constraints.maxHeight * 0.5,
              ),
              Container(
                color: Colors.blue,
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.5,
              ),
            ],
          );
        },
      )),
    );
  }
}
