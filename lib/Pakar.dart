import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PakarWidget extends StatefulWidget {
  const PakarWidget({Key?key}) : super(key: key);

  @override
  _PakarWidgetState createState() => _PakarWidgetState();
}

class _PakarWidgetState extends State<PakarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: ListView (children: [Container(
          width: double.infinity,
          height: 677,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Pakar terkait',
                  style: TextStyle(
                    fontSize: 20,fontFamily: 'Poppins'
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/image/img039.jpg',
                  width: 250,
                  height: 270,
                  fit: BoxFit.cover,
                ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Sertifikat Pakar',
                  style: TextStyle(
                    fontSize: 22,fontFamily: 'Poppins'
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Image.asset(
                  'assets/image/0001.jpg',
                  width: 300,
                  height: 188,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        ],
        )
      ),
     );
  }
}