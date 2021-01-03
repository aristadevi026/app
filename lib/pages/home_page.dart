import 'package:flutter/material.dart';
import 'package:app_uas22/pages/edit_album.dart';
import 'package:app_uas22/pages/profil.dart'; //melakukan import file profil.dart agar dapat dipanggil class yang ada disana
import 'package:app_uas22/pages/detail.dart'; //melakukan import file detail.dart agar dapat dipanggil class yang ada disana
import 'package:app_uas22/pages/tambah.dart'; //melakukan import file tambah.dart agar dapat dipanggil class yang ada disana

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        routes: <String, WidgetBuilder>{
          '/edit':(BuildContext context) => Edit(),
          '/profile': (BuildContext context) =>
              MyProfil(), //memanggil class MyProfil menggunakan perintah /profile
          '/detail': (BuildContext context) =>
              Detail(), //memanggil class Detail menggunakan perintah /detail
          '/home': (BuildContext context) =>
              Home(), //memanggil class Home menggunakan perintah /home
          '/tambah': (BuildContext context) =>
              Tambah(), //memanggil class Tambah menggunakan perintah /tambah
        }),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade200, //warna latar belakang
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context,
                  '/home'); //memanggil rute home yang telah dibuat diatas
            },
          ),
          title: Text('Home',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              )),
          centerTitle: true,
          backgroundColor: Colors.brown, //warna latar appbar
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context,
                    '/profile'); //memanggil rute profile yang telah dibuat diatas
              },
            ),
          ],
        ),
        body: ListView //agar dapat discrool
          (children: <Widget>[
          Container //membuat column
            (
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start, //agar tulisan pada column rata kiri
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //agar ada jarak ditiap text, kerena column maka akan terlihat seperti enter
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5)), //jarak antara column dengan appbar
                Text(
                  "What's New ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Find your favorite album",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.withOpacity(
                          0.8)), //agar warna tulisan abu-abu dan terlihat agak samar
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //agar ada jarak ditiap konten pada row, kerena row maka akan terlihat seperti tab
                  children: <Widget>[
                    Image.asset(
                      "images/bts.png", //memanggil gambar dalam aset
                      height: 300,
                      width: 200,
                      fit: BoxFit
                          .cover, //agar gambar menyesuaikan dengan tinggi dan lebar yang telah ditentukan
                    ),
                    Image.asset(
                      "images/evermore.png", //memanggil gambar dalam aset
                      height: 300,
                      width: 200,
                      fit: BoxFit
                          .cover, //agar gambar menyesuaikan dengan tinggi dan lebar yang telah ditentukan
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container //membuat column baru
            (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //agar tulisan/konten dalam colum rata kiri
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(top: 10)),
                Text(
                  "Best Seller",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/adele.png", //memanggil gambar dalam aset
                      height: 95,
                      width: 95,
                      fit: BoxFit
                          .cover, //agar gambar menyesuaikan dengan tinggi dan lebar yang telah ditentukan
                    ),
                    //membuat column didalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "25",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Adele",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 150.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      '/edit'); //memanggil rute detail_a
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/sk.jpg", //memanggil gambar dalam aset
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column didalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Go Live",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "StrayKids",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 250.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/detail'); //memanggil rute detail
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/7.png", //memanggil gambar dalam aset
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "BTS",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 750.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      '/detail_7'); //memanggil rute detail_7
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/hikaru.jpg", //memanggil gambar dalam aset
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Distance",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Hikaru Utada",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 150.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context,
                                      '/detail_h'); //memanggil rute detail_h
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
              ],
            ),
          ),
          Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, //agar tulisan/konten pada column rata kiri
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.only(top: 10)),
                    Text(
                      "All Album",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    )
                  ])),
          Container(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.end, //agar konten pada column rata kanan
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.black,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/tambah'); //memanggil rute tambah
                  },
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/folklore.png",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Folklore",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Taylor Swift",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 250.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_ts');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/nct.jpg",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column di dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Resonance Pt.2",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "NCT",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 880.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_n');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/bp.png",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "The Album",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Black Pink",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 900.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_bp');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/harry.jpg",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Fine Line",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Harry Styles",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 150.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_ha');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/loona.png",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Hash",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Loona",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 550.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_l');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/raisa.jpeg",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Handmade",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Raisa",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 180.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_r');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/adele.png",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "25",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Adele",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 150.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_a');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/sk.jpg",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Go Live",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "StrayKids",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 250.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Image.asset(
                      "images/7.png",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "BTS",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 750.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_7');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                    Image.asset(
                      "images/hikaru.jpg",
                      height: 95,
                      width: 95,
                      fit: BoxFit.cover,
                    ),
                    //membuat column dalam row
                    Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, //agar tulisan/konten pada column berjarak
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //agar tulisan/konten pada column rata kiri
                            children: <Widget>[
                              Text(
                                "Distance",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Hikaru Utada",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Rp. 150.000,-",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              RaisedButton(
                                child: Text("Detail",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black)),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/detail_h');
                                },
                                color: Colors.brown[100],
                              )
                            ])),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}