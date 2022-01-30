import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pakar.dart';
// import 'package:tesd_drawer/Pakar.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: ListView(
          children: [
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'About',
                      style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/image/Wavy_Bus-22_Single-05.jpg',
                        width: 250,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'Identifikasi Kesuburan tanah  berbasis\nAndroid menggunakan metode \nForward Chaining',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'Dibuat oleh Kelompok 14',
                        style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                      )),
                  Text(
                    'Nur Liana(201955202130)\nPandu Diaz nugraha(201955202083)\nLestary(201955202051)\nAulia(201955202006)\nJamalludin(201955202036)',
                    style: TextStyle(fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PakarWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Pakar',
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
