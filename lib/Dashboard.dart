import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardWidget extends StatefulWidget {

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: ListView(
          children:[
            Container(
            width: double.infinity,
            height: 688,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6BBC42), Color(0xFF7D5B1E)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: 200,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFFD0EE37),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: AutoSizeText(
                        'Selamat Datang',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                    ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/image/5167172.jpg',
                      width: 280,
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Apa itu kesuburan tanah?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFF2ACFD7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Kesuburan adalah Status suatu tanah yang\nmenunjukkan kapasitas untuk memasok unsurunsur esensial dalam jumlah yang mencukupi\nuntuk pertumbuhan tanaman tanpa adanya\nkonsentrasi meracun dari unsur manapun.\nKemampuan tanah untuk\ndapat menyediakan unsur hara dalam jumlah\nyang cukup dan berimbang untuk pertumbuhan\ndan hasil tanaman\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),] 
          
        ),
      ),
    );
  }
}
