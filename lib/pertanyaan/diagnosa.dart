import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;
  // bool _value6 = false;
  // bool _value7 = false;
  // bool _value8 = false;

  List<int> result = [0, 0, 0, 0, 0, 0];

  late List<int> hasil;

  void onChanged1(bool value) {
    setState(() {
      this._value1 = value;
    });
    if (value) {
      result[0] = 1;
      // result.add(1);
    } else {
      // result.remove(0);
      result[0] = 0;
    }
    print(result);
  }

  void onChanged2(bool value) {
    setState(() {
      this._value2 = value;
    });
    if (value) {
      result[1] = 1;
    } else {
      result[1] = 0;
    }
    print(result);
  }

  void onChanged3(bool value) {
    setState(() {
      this._value3 = value;
    });
    if (value) {
      result[2] = 1;
    } else {
      result[2] = 0;
    }
    print(result);
  }

  void onChanged4(bool value) {
    setState(() {
      this._value4 = value;
    });
    if (value) {
      result[3] = 1;
    } else {
      result[3] = 0;
    }
    print(result);
  }

  void onChanged5(bool value) {
    setState(() {
      this._value5 = value;
    });
    if (value) {
      result[4] = 1;
    } else {
      result[4] = 0;
    }
    print(result);
  }

  void onChanged6(bool value) {
    setState(() {
      this._value6 = value;
    });
    if (value) {
      result[5] = 1;
    } else {
      result[5] = 0;
    }
    print(result);
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
                            fontSize: 14,
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
                          height: 62,
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
                                      value: _value1,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          height: 62,
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
                                      value: _value2,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          height: 62,
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
                                      value: _value3,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          height: 62,
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
                                      value: _value4,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          height: 62,
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
                                      value: _value5,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          height: 62,
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
                                      value: _value6,
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
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
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
                          primary: Color(0xFF7D5B1E),
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
    if (result[0] == 1 && result[1] ==  1 && result[5] == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return hasilDiagnosa1Widget();
          },
        ),
      );
    } else if (result[2] == 1 && result[4] == 1 && result[5] == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return hasilDiagnosa2Widget();
          },
        ),
      );
    } else {
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
