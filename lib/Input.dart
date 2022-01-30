import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tanah/pertanyaan/diagnosa.dart';
// import 'package:tesd_drawer/pertanyaan/diagnosa.dart';

class IntputTanahWidget extends StatefulWidget {
  @override
  _IntputTanahWidgetState createState() => _IntputTanahWidgetState();
}

class _IntputTanahWidgetState extends State<IntputTanahWidget> {
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
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Image.asset(
                      'assets/image/2152.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Text(
                      'pada halaman ini anda perlu memasukan jenis tanah dan tekstur tanah',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 140, 0, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DiagnosaWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Mulai',
                        style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
