import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tesd_drawer/Input.dart';
import 'package:tesd_drawer/Pages/Dashboard_page.dart';

import 'About_page.dart';
import 'Daftar_tanah_page.dart';

class DiagnosaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Diagnosa'),
      ),
      drawer: Drawer(
       child: Column(
         children: [
           Container(
             padding: EdgeInsets.all(20),
             width: double.infinity,
             height: 150,
             color: Colors. lightGreen,
             alignment: Alignment.bottomLeft,
             child: Text(
               'Pilihan Menu',
               style: TextStyle(
                 color: Colors. white,
                 fontSize: 24,
               ),
             )
           ),
           SizedBox(height: 10,
           ),
           ListTile(
             onTap: () {
               Navigator.of(context).pushReplacement(
                 MaterialPageRoute(builder: (context) => DashboardPage(),
                 ),
               );
             },
             leading: Icon(Icons.home, 
             size: 40,),
             title: Text(
             'Dashboard',
             style: TextStyle(
                 fontSize: 24,
               ),),
           ),
           ListTile(
             onTap: () {
               Navigator.of(context).pushReplacement(
                 MaterialPageRoute(builder: (context) => DiagnosaPage(),
                 ),
               );
             },
             leading: Icon(Icons.search, 
             size: 40,),
             title: Text(
             'Diagnosa',
             style: TextStyle(
                 fontSize: 24,
               ),),
           ),
           ListTile(
              onTap: () {
               Navigator.of(context).pushReplacement(
                 MaterialPageRoute(builder: (context) => DaftarTanahPage(),
                 ),
               );
             },
             leading: Icon(Icons.folder, 
             size: 40,),
             title: Text(
             'Daftar Tanah',
             style: TextStyle(
                 fontSize: 24,
               ),),
           ),
           ListTile(
              onTap: () {
               Navigator.of(context).pushReplacement(
                 MaterialPageRoute(builder: (context) => AboutPage(),
                 ),
               );
             },
             leading: Icon(Icons.person, 
             size: 40,),
             title: Text(
             'About',
             style: TextStyle(
                 fontSize: 24,
               ),),
           ),
         ],
       )
     ),
     body: IntputTanahWidget (),
   );
  }
}