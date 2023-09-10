// ignore_for_file: prefer_const_constructors

import 'package:academia_flutter_flutter/pages/botoes_rotacao_texto/botoes_rotacao_texto.dart';
import 'package:academia_flutter_flutter/pages/layout_builder/layout_builder_page.dart';
import 'package:academia_flutter_flutter/pages/media_query/media_query._page.dart';
import 'package:academia_flutter_flutter/pages/scrolls/listview_page.dart';
import 'package:academia_flutter_flutter/pages/scrolls/singlechieldscrollview_page.dart';
import 'package:flutter/material.dart';

import '../container/container_page.dart';
import '../rows_collumns/rows_columns.dart';

enum PopupMenuPages { 
  container, 
  rows_columns, 
  media_query, 
  layout_builder,
  botoes_rotacao_texto,
  singlechieldscrollview,
  listview}

class HomePage extends StatelessWidget {
  static final String routName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Inicial'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              tooltip: "Selecione uma opção",
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed(ContainerPage.routName);
                    break;
                  case PopupMenuPages.rows_columns:
                    Navigator.of(context).pushNamed(RowsColumns.routName);
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.of(context).pushNamed(MediaQueryPage.routName);
                    break;
                    case PopupMenuPages.layout_builder:
                    Navigator.of(context).pushNamed(LayoutBuilderPage.routName);
                    break;
                     case PopupMenuPages.botoes_rotacao_texto:
                    Navigator.of(context).pushNamed(BotoesRotacaoTexto.routName);
                    break;
                    case PopupMenuPages.singlechieldscrollview:
                    Navigator.of(context).pushNamed(SinglechieldscrollviewPage.routName);
                    break;
                     case PopupMenuPages.listview:
                    Navigator.of(context).pushNamed(ListviewPage.routName);
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child: Text('Rows & Columns'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: Text('Midia Query'),
                  ), 
                   PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child: Text('Layout Builder'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao_texto,
                    child: Text('Botões Rotação texto'),
                  ), 
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.singlechieldscrollview,
                    child: Text('SingleChieldScrollVview'),
                  ),
                   PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listview,
                    child: Text('ListView'),
                  )
                ];
              }),
        ],
      ),
      body: Container(),
    );
  }
}
