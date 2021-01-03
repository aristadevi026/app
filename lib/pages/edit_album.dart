
import 'package:flutter/material.dart';
import 'package:app_uas22/pages/detail.dart';
import 'package:app_uas22/pages/profil.dart'; //melakukan import file profil.dart agar dapat dipanggil class yang ada disana
import 'package:app_uas22/pages/detail.dart'; //melakukan import file detail.dart agar dapat dipanggil class yang ada disana


void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Edit(),
        routes: <String, WidgetBuilder>{
          '/edit':(BuildContext context) => Edit(),
          '/profile': (BuildContext context) =>
              MyProfil(), //memanggil class MyProfil menggunakan perintah /profile
          '/detail': (BuildContext context) =>
              Detail(), //memanggil class Detail menggunakan perintah /detail
        }),
  );
}

class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200, //warna latar belakang apk
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context,
                '/detail'); //memanggil rute detail yang telah dibuat diatas
          },
        ),
        title: Text('Edit Album'),
        centerTitle: true,
        backgroundColor: Colors.brown, //warna latar pada appbar
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outline),
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context,
                  '/profile'); //memanggil rute profile yang telah dibuat diatas
            },
          ),
        ],
      ),
      body: SingleChildScrollView //agar dapat discrool pada 1 child
        (
        child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, //agar konten justify/menyesuaikan layar
            mainAxisAlignment: MainAxisAlignment
                .start, //agar konten rata kiri/dimulai dari kiri
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 5)), //memberikan jarak
              Text(
                "Update Album",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                  color: Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Cover Album',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              150.0))), //mengatur pinggiran border pada box
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Nama Album',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150.0))),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Artist',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150.0))),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Harga",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150.0))),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15.0)),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Deskripsi',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150.0))),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 80.0)),
              Card(
                color: Colors.brown[600],
                elevation: 5,
                child: Container(
                  height: 50,
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {},
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
