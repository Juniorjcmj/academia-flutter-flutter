import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {

  static final String routName = "/listview";

  const ListviewPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('List views'),),
           body: ListView.separated(
              itemCount: 1000,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.red,
                );
              },
              itemBuilder: (context, index) {
                print('Carregando o index $index');
                return ListTile(
                  title: Text('Indice $index'),
                  subtitle: Text('Flutter é top'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://rovereimportadora.com.br/wp-content/uploads/2023/03/Pop-Jake-Sully-hi-res.png'),
                  ),
                  trailing: CircleAvatar(),
                );
              },
             ),
           
       );
  }
}