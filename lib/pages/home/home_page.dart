// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../container/container_page.dart';
import '../rows_collumns/rows_columns.dart';



enum PopupMenuPages{
  container,
  rows_columns
}
class HomePage extends StatelessWidget {

  static final String routName = '/';

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           
           appBar: AppBar(title: const Text('Home Page'),
           actions: [
            PopupMenuButton<PopupMenuPages>(
              tooltip: "Selecione uma opção",

              onSelected: (PopupMenuPages valueSelected){
                switch(valueSelected){
                  case PopupMenuPages.container:
                   Navigator.of(context).pushNamed(ContainerPage.routName);
                   break;
                    case PopupMenuPages.rows_columns:
                   Navigator.of(context).pushNamed(RowsColumns.routName);
                   break;
                }
              },
              itemBuilder: (BuildContext context){
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child:Text('Container') ,
                    ),
                     PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child:Text('Rows & Columns') ,
                    )
                  
                ];
              }),

           ]
           ,),
           body: Container(),
       );
  }
}