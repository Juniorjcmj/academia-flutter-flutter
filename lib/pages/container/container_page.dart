import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {

  static final String routName = "/container";
  
  const ContainerPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Exemplo de container'),),
           body: Container(
            width: 200,
            height: 200,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),            
            decoration: BoxDecoration(
               color: Colors.amber[800],
               borderRadius: BorderRadius.circular(50),
               boxShadow: const [
                 BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(20, 20)),
                   BoxShadow(
                  color: Color.fromARGB(255, 12, 126, 79),
                  blurRadius: 20,
                  offset: Offset(-20, -20)),
                  ]
            ),
          )
       );
  }
}