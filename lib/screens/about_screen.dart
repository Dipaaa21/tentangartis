import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('About Us'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/wp.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 200,
                  child: Image.asset("assets/images/kucing.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Explore the World of Cinema with Us',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Kami berdedikasi untuk mempersembahkan kepada Anda film-film terbaik dari seluruh dunia. Misi kami adalah membantu Anda menemukan keajaiban sinema, satu film dalam satu waktu.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              _buildCard(
                title: 'Visi Kami',
                content: 'Menjadi tujuan utama bagi para pecinta film, menawarkan beragam pengalaman sinematik dari semua genre dan era.',
              ),
              _buildCard(
                title: 'Pelayanan Kami',
                content: 'Kami menawarkan pilihan film pilihan, festival film, pemutaran eksklusif, dan banyak lagi. Apakah Anda penggemar film atau baru mulai menjelajah, kami punya sesuatu untuk Anda.',
              ),
              _buildCard(
                title: 'Hubungi Kami',
                content: 'Email: info@flowercompany.com\nPhone: +123 456 7890\nAddress: 456 Cinema flower, Flower City, Indonesia',
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({required String title, required String content}) {
    return Card(
      color: Colors.black.withOpacity(0.7),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
