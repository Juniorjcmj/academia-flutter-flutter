// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class BotoesRotacaoTexto extends StatelessWidget {
  static final String routName = '/botoes_rotacao_texto';

  const BotoesRotacaoTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões Rotação'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Container(
                    color: Colors.amberAccent,
                    padding: EdgeInsets.all(10),
                    child: Text("Jota Pragramer")),
              ),
              Icon(Icons.abc_rounded)
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text('Salvar'),
            style: TextButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.all(50),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                )),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ElevatedButton(
            onPressed: () {},
            child: Text('Salvar'),
            style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shadowColor: Colors.blue[900],
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.air),
              label: Text('Modo avião')),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {},
              child: Text('Button com ButtonStyle'),
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 180, 18, 18)),
                  minimumSize: MaterialStateProperty.all(Size(120, 50)),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    }
                    return Colors.blue[900];
                  }))),

                    SizedBox(height: 10),
          InkWell(
            onTap: (){},
            child: Text("Inkwel button"),          
          ),

          SizedBox(height: 10),

          GestureDetector(
            child: Text("ButtonGestureDector"),
            onTap: () => print("Button Clicado GestureDetect"),
              onVerticalDragStart: (_) => print("Start $_ "),
          ),
          SizedBox(height: 10),

          Container(
            width: 200,
            height: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.amber,
                Color.fromARGB(255, 192, 192, 85)
              ]
              ),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 5),
                color: Colors.red
              )
              ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: (){},
                child: Center(
                  child: Text("Salvar")
                  )
                  ),
          )
              
        ]),
      ),
    );
  }
}
