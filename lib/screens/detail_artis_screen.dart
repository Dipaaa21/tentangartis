import 'package:flutter/material.dart';

class DetailArtisScreen extends StatelessWidget {
  final String nama;
  final String tanggalLahir;
  final String image;
  final List<String> gallery;
  final String desc;

  DetailArtisScreen({
    required this.nama,
    required this.tanggalLahir,
    required this.image,
    required this.gallery,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Header
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 250,
              ),
            ),
            // Nama Film
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                nama,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Tanggal Rilis
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Tanggal Rilis: $tanggalLahir",
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            // Deskripsi Film
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20.0),
            // Judul Gallery
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Gallery",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            // Gallery
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(gallery[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
