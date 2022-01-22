// import 'package:app_pakar/components/card2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Daftartanah extends StatefulWidget {
  const Daftartanah({Key? key}) : super(key: key);

  @override
  _DaftartanahWidget createState() => _DaftartanahWidget();
}

class _DaftartanahWidget extends State<Daftartanah> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFFCBEE60),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Karakter Lahan',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 360,
              padding: const EdgeInsets.all(10),
              child: ListView(
                // shrinkWrap: true,
                children: [
                  BuilCard("Tekstur tanah remah", """Remah adalah sebuah kondisi struktural
                                                        yang dimana tanah akan terlihat sangat berpori dan terasa sedikit lebih kering pada umumnya. 
                                                        butiran merupakan sebuah struktur yang dimana tanah berbentuk membulat dan memiliki banyak sisi berbeda.""" ),
                  BuilCard("Jenis tanah humus?", """ Tanah humus adalah tanah yang memiliki 
                                                  kandungan organik sebagai habitat mikroorganisme penyubur tanah, 
                                                  sehingga tanah kaya akan unsur hara yang dibutuhkan tanaman.
                                                  Humus yang terdapat dalam tanah juga menjadikan tanah memiliki kemampuan untuk menahan air lebih baik, 
                                                  serta menjaganya dari risiko erosi."""),
                  BuilCard("Tekstur tanah butiran?", """Butiran merupakan jenis struktur tanah yang bentuknya cenderung 
                                                      membulat atau terlihat memiliki banyak sisi. """),
                  BuilCard("Jenis tanah? kapur", """tanah kapur bisa disimpulkan bahwa tanah ini tidak subur dan tidak bisa
                                                 ditanami tanaman yang membutuhkan banyak air.Namun jika ditanami oleh pohon yang 
                                                 kuat dan tahan lama seperti pohon jati dan pohon keras lainnya. """),
                  BuilCard("Tekstur tanah gumpal?", """Gumpal bersudut adalah sebuah kondisi struktur tanah yang memiliki sumbu
                                                 vertikal dan horizontal yang sama panjang dan pada sudutnya tampak seperti membentuk 
                                                 sebuah sudut yang tajam."""),
                  BuilCard("Jenis tanah liat?", """Tanah lat memiliki ciri utama dari tanah liat adalah sifatnya yang lengket.Tanah liat umumnya
                                                lengket ketika basah sehingga mudah untuk mengubah bentuknya. Tanah liat memiliki sifat sulit menyerap air 
                                                sehingga lebih banyak diperuntukkan sebagai bahan untuk bangunan. Umumnya tanah liat tidak memiliki warna yang terlalu gelap atau terang. """),
                  // CardWidget(),
                  // CardWidget(),
                  // CardWidget(),
                  // CardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card BuilCard(String tittle, String detail) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Color(0xFFF5F5F5),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 150,
        height: 270,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 9,
              child: Image.asset(
                'assets/image/soil-575641_640.jpg',
                width: double.infinity,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                      child: Text(
                        tittle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                      child: Text(
                        'Adalah',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        child: const Text(
                          'Detail',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.green),
                        ),
                        onPressed: () {
                          showDialog<String>(
                            context: context,
                            // ignore: prefer_const_constructors
                            builder: (BuildContext context) => AlertDialog(
                              title: Text(tittle),
                              content: Text(detail,
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
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
