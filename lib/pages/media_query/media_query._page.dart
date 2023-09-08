// ignore_for_file: prefer_const_declarations, avoid_print

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {

static final String routName = '/media_query';

  const MediaQueryPage({ super.key });

   @override
   Widget build(BuildContext context) {
   final mediaQuery = MediaQuery.of(context);
   
   print('altura: ${mediaQuery.size.height}');
   print('largura : ${mediaQuery.size.height}');
   print('Orientação ${mediaQuery.orientation}');
   print('Padding top ${mediaQuery.padding.top}');
   print('Tamanho AppBar default ${kToolbarHeight}');  

   var appBar  =  AppBar(title: const Text('MediaQuery'));

   print('Tamanho appBar ${appBar.preferredSize.height}');

   final statusBar = mediaQuery.padding.top;

   //tamanho exato da tela sem o appbar e status bar
   final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight ;

   // trabalhar sempre com porcentagem da tela 
   
       return Scaffold(
           appBar:appBar,           
           body: Center(
            child: Column(
             children: [
               Container(
                color: Colors.red,
                width: mediaQuery.size.width,
                height: heightBody * 0.5,
               ),
               Container(
                color: Colors.blue,
                width: mediaQuery.size.width,
                height: heightBody * 0.5,
               ),
             ],
           )),
       );
  }
}