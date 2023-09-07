// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RowsColumns extends StatelessWidget {

  static final String  routName = '/rows_columns';
  
  const RowsColumns({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Rows && Columns'),),
           body: Container(    
            width: 400,     
            color: Colors.amber,    
             child: Column(              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.indigoAccent,
                  child: Text("Marinha do Brasil")
                  ),
                Text("Aeronáutica"),
                Text("Exército Brasileiro"),                

                Container(
                  color: Colors.amber[900],
                  height: 200,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Aeronáutica"),
                      Text("Exército Brasileiro"),
                    ],
                  ),
                )
              ],
             ),
           ),
       );
  }
}