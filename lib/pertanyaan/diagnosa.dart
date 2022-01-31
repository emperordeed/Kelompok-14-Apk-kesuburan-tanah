import 'dart:ui';
import 'package:flutter/material.dart';

import 'hasildiagnosa1.dart';
import 'hasildiagnosa2.dart';
import 'hasildiagnosa3.dart';

class DiagnosaWidget extends StatefulWidget {
  const DiagnosaWidget({Key? key}) : super(key: key);

  @override
  DiagnosaWidgetState createState() => DiagnosaWidgetState();
}

class DiagnosaWidgetState extends State<DiagnosaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> pertanyaan = [
   "tekstur remah di sekitaran pohon ?",
    "tanah hitam berair ?",
    "Tekstur butiran kasar ?",
    "Tanah berKapur dan kering ?",
    "tekstur Gumpal pasir ?",
    "tanah liat basah ?",
  ];

  final List<bool> _value = [false, false, false, false, false, false];

  void onChanged1(bool value) {
    setState(() {
      _value[0] = value;
      if (value) {
        _value[0] = true;
      } else {
        _value[0] = false;
      }
    });
  }

  void onChanged2(bool value) {
    setState(() {
      _value[1] = value;
    });
    if (value) {
      _value[1] = true;
    } else {
      _value[1] = false;
    }
  }

  void onChanged3(bool value) {
    setState(() {
      _value[2] = value;
    });
    if (value) {
      _value[2] = true;
    } else {
      _value[2] = false;
    }
  }

  void onChanged4(bool value) {
    setState(() {
      _value[3] = value;
    });
    if (value) {
      _value[3] = true;
    } else {
      _value[3] = false;
    }
  }

  void onChanged5(bool value) {
    setState(() {
      _value[4] = value;
    });
    if (value) {
      _value[4] = true;
    } else {
      _value[4] = false;
    }
  }

  void onChanged6(bool value) {
    setState(() {
      _value[5] = value;
    });
    if (value) {
      _value[5] = true;
    } else {
      _value[5] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9E2AE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Form Diagnosa',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                           'Jawab Pertanyaan sesuai kriteria tanah Anda. Anda hanya perlu mencentang kriteria tanah yang ingin di ketahui subur atau tidak',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[0],
                                      onChanged: (value) {
                                        onChanged1(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[0],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[1],
                                      onChanged: (value) {
                                        onChanged2(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[1],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[2],
                                      onChanged: (value) {
                                        onChanged3(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[2],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[3],
                                      onChanged: (value) {
                                        onChanged4(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[3],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[4],
                                      onChanged: (value) {
                                        onChanged5(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[4],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: _value[5],
                                      onChanged: (value) {
                                        onChanged6(value!);
                                      },
                                    ),
                                    Container(
                                      width: 10,
                                    ),
                                    Text(
                                      pertanyaan[5],
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 10),
                      child: ElevatedButton(
                        onPressed: () {
                          navigatorto();
                        },
                        child: Text("Diagnosa"),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF6BBC42),
                          minimumSize: Size(200, 50),
                          elevation: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigatorto() {
    if (_value[0] == false &&
        _value[1] == false &&
        _value[2] == false &&
        _value[3] == false &&
        _value[4] == false &&
        _value[5] == false) {
      showDialog<String>(
        context: context,
        // ignore: prefer_const_constructors
        builder: (BuildContext context) => AlertDialog(
          title: const Text("Perhatian"),
          content: const Text(
              "Anda tidak melanjutkan diagnosa,anda perlu mengisi kriteria tanah terlebih dahulu",
              //'leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing ',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
                child:
                const Text('Cancel');
              },
              child: Text('Ok'),
            )
          ],
        ),
      );
    } else if (_value[0] == true &&
        _value[1] == true &&
        _value[2] == true &&
        _value[3] == true) {
      setState(
        () {
          _value[0] = false;
          _value[1] = false;
          _value[2] = false;
          _value[3] = false;
          _value[4] = false;
          _value[5] = false;
        },
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return hasilDiagnosa1Widget();
          },
        ),
      );
    } else if (_value[4] == true && _value[5] == true) {
      setState(
        () {
          _value[0] = false;
          _value[1] = false;
          _value[2] = false;
          _value[3] = false;
          _value[4] = false;
          _value[5] = false;
        },
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return hasilDiagnosa2Widget();
          },
        ),
      );
    } else {
      setState(
        () {
          _value[0] = false;
          _value[1] = false;
          _value[2] = false;
          _value[3] = false;
          _value[4] = false;
          _value[5] = false;
        },
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return hasilDiagnosa3Widget();
          },
        ),
      );
    }
  }
}
