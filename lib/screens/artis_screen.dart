import 'package:flutter/material.dart';
import 'detail_artis_screen.dart';

class ListArtisScreen extends StatelessWidget {
  final List<Map<String, dynamic>> artisData = [
    {
      "nama": "Sule",
      "tanggalLahir": "16 Juli 2010",
      "image": "assets/images/sule.jpg",
      "gallery": [
        "assets/images/sule1.jpg",
        "assets/images/sule2.jpg",
        "assets/images/sule3.jpg"
      ],
      "desc": "Inception adalah film thriller fiksi ilmiah yang disutradarai oleh Christopher Nolan. Film ini mengisahkan tentang Dom Cobb, seorang pencuri yang menggunakan teknologi untuk memasuki alam bawah sadar seseorang."
    },
    {
      "nama": "Ayu ting ting",
      "tanggalLahir": "31 Maret 1999",
      "image": "assets/images/ayu.jpg",
      "gallery": [
        "assets/images/ayu1.jpg",
        "assets/images/ayu2.jpg",
        "assets/images/ayu3.jpg"
      ],
      "desc": "The Matrix adalah film aksi fiksi ilmiah yang disutradarai oleh Wachowski Brothers. Film ini bercerita tentang seorang programmer bernama Neo yang menemukan kebenaran tentang realitas yang ia tinggali."
    },
    {
      "nama": "Anya geraldine",
      "tanggalLahir": "7 November 2014",
      "image": "assets/images/anya.jpg",
      "gallery": [
        "assets/images/anya1.jpg",
        "assets/images/anya2.jpg",
        "assets/images/anya3.jpg"
      ],
      "desc": "Interstellar adalah film petualangan fiksi ilmiah yang disutradarai oleh Christopher Nolan. Film ini mengikuti perjalanan sekelompok penjelajah yang melakukan perjalanan melalui lubang cacing untuk mencari tempat tinggal baru bagi umat manusia."
    },
    {
      "nama": "Cupi cupita",
      "tanggalLahir": "26 April 2019",
      "image": "assets/images/cupi.jpg",
      "gallery": [
        "assets/images/cupi1.jpg",
        "assets/images/cupi2.jpg",
        "assets/images/cupi3.jpg"
      ],
      "desc": "Avengers: Endgame adalah film superhero yang disutradarai oleh Anthony dan Joe Russo. Film ini adalah bagian dari Marvel Cinematic Universe dan melanjutkan kisah setelah peristiwa Avengers: Infinity War."
    },
    {
      "nama": "Tokyo",
      "tanggalLahir": "30 Mei 2019",
      "image": "assets/images/tokyo.jpg",
      "gallery": [
        "assets/images/tokyo1.jpg",
        "assets/images/tokyo2.jpg",
        "assets/images/tokyo3.jpg"
      ],
      "desc": "Parasite adalah film thriller komedi hitam yang disutradarai oleh Bong Joon-ho. Film ini mengisahkan tentang keluarga miskin yang menyusup ke dalam kehidupan keluarga kaya dan berakhir dengan cara yang tragis."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artis Terbaik'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_film.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: artisData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtisScreen(
                        nama: artisData[index]["nama"],
                        tanggalLahir: artisData[index]["tanggalLahir"],
                        image: artisData[index]["image"],
                        gallery: artisData[index]["gallery"],
                        desc: artisData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${artisData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${artisData[index]["nama"]} - ${artisData[index]["tanggalLahir"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
