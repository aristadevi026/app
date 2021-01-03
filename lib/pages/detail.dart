import 'package:flutter/material.dart';
import 'package:app_uas22/pages/profil.dart'; //melakukan import file profil.dart agar dapat dipanggil class yang ada disana
import 'package:app_uas22/main.dart'; //melakukan import file main.dart agar dapat dipanggil class yang ada disana
import 'edit_album.dart'; //melakukan import file edit_album.dart agar dapat dipanggil class yang ada disana

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Detail(),
        routes: <String, WidgetBuilder>{
          '/profile': (BuildContext context) =>
              MyProfil(), //memanggil class MyProfil menggunakan perintah /profile
          '/home': (BuildContext context) =>
              Home(), //memanggil class Home menggunakan perintah /home
          '/edit': (BuildContext context) =>
              Edit(), //memanggil class Edit menggunakan perintah /edit
        }),
  );
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.brown,
            ),
            onPressed: () {
              Navigator.pushNamed(context,
                  '/home'); //memanggil rute home yang telah dibuat diatas
            },
          ),
          title: Text('Detail Album'),
          centerTitle: true,
          backgroundColor: Colors.brown[200],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
              color: Colors.brown,
              onPressed: () {
                Navigator.pushNamed(context,
                    '/profile'); //memanggil rute profile yang telah dibuat diatas
              },
            ),
          ],
        ),
        body: ListView //agar dapat discrool
          (children: <Widget>[
          Container(
              child: Column(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        top: 10)), //jarak antara appbar dengan konten
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/sk.jpg", //memanggil gambar dari aset
                      height: 200,
                      width: 200,
                      fit: BoxFit
                          .cover, // agar gambar menyesuaikan tinggi dan lebar yang telah ditentukan
                    ),
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //memberikan jarak spasi antara tulisan
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Go Live",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "StrayKids",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 250.000,-",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ])),
                  ],
                )
              ])),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10, left: 25), //jarak border
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 330, //tinggi box border
                        width: 360, //lebar box border
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.brown),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20), //mengatur pinggiran box
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10,
                              left: 10), //jarak tulisan dalam border ke border
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .stretch, //agar isi pada column justify (menyesuaikan tempat)
                            children: <Widget>[
                              Text(
                                "RELEASE : 17 Juni 2020",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "MEREK   : JYP Entertainment",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "VERSION  : A Ver. / B Ver. / C Ver.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "BERAT    : 600 gr",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "DETAIL    : ",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- Package Box",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- Photobook (80p)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- CD (1ea)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- Photocard (2ea)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- Unit Lyric Leafler (1ea)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- 4 Cuts Film (1ea)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "- Secret Card (1ea)",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: Column(children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        top: 40,
                        left: 25), //jarak button dengan bagian atas dan kiri
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceEvenly, //memberikan jarak secukupnya antar button
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Edit",
                                style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/edit'); //memanggil rute edit
                            },
                            color: Colors.brown[100],
                          ),
                          RaisedButton(
                            child: Text("Hapus",
                                style:
                                TextStyle(fontSize: 20, color: Colors.black)),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/hapus'); //memanggil rute hapus
                            },
                            color: Colors.brown[100],
                          ),
                        ]))
              ]))
        ]));
  }
}
