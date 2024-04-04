import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi_detail.dart';
import 'prodi.dart';
import 'profil.dart';
import 'profil_detail.dart';
import 'url.dart';

void main() {
  runApp(const FakultasApp());
}

class FakultasApp extends StatelessWidget {
  const FakultasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas',
      theme: ThemeData(
        fontFamily: 'Trebuchet MS',
      ),
      home: const HomeProfilFakultas(),
    );
  }
}

class HomeProfilFakultas extends StatelessWidget {
  const HomeProfilFakultas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9100),
        title: Row(
          children: [
            Image.asset(
              'iconn.png',
              width: 105,
              height: 50,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'FAKULTAS ILMU KOMPUTER',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Trebuchet MS',
                  ),
                ),
              ),
            ),
            SizedBox(width: 88),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 500,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          // Fungsi yang akan dijalankan saat gambar ditekan
                        },
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200.0),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(255, 110, 64, 1)
                                    .withOpacity(0.5),
                                spreadRadius: 15,
                                blurRadius: 20,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200.0),
                            child: Image.asset(
                              'fasilkom.jpg',
                              width: 250,
                              height: 250,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CurvedDivider(),
            // Deskripsi Fakultas Ilmu Komputer
            buildDescriptionSection(
              title: 'Fakultas Ilmu Komputer',
              description:
                  'Fakultas Ilmu Komputer (FIK) adalah Fakultas yang ketujuh yang dibentuk oleh UPN “Veteran” Jawa Timur yang diawali dengan pelantikan Dekan pertama pada bulan Agustus 2016 berdasarkan Keputusan Rektor No. 153/UN63/KP/2016 tanggal 18 Agustus 2016. FIK mengelola 2 (dua) program studi S1, yakni Teknik Informatika dan Sistem Informasi. Kedua program studi ini sebelumnya berada di bawah Fakultas Teknologi Industri (FTI), dimana program studi Teknik Informatika didirikan pada tahun 2003 dan Sistem Informasi pada tahun 2007. Berdasarkan Peraturan Menteri Riset, Teknologi, dan Pendidikan Tinggi No.38 Tahun 2015 tentang Organisasi dan Tata Kerja Universitas Pembangunan Nasional “Veteran” Jawa Timur, telah dilakukan penataan kelembagaan di lingkungan UPN “Veteran” Jawa Timur sehingga program studi S1 Teknik Informatika dan S1 Sistem Informasi menjadi berada di bawah Fakultas Ilmu Komputer.',
              website: 'https://fasilkom.upnjatim.ac.id/',
              dekan: 'Dr. Ir. Chairul Anwar, M.Kom.',
              dekanPhoto: 'dekanfasilkom.png',
              visi:
                  '“MENJADI FAKULTAS ILMU KOMPUTER YANG UNGGUL BERKARAKTER BELA NEGARA”',
              misi:
                  '1. Menyelenggarakan dan mengembangkan pendidikan dalam bidang teknologi informasi yang berkarakter bela negara guna membentuk Pelajar Pancasila,\n'
                  '2. Meningkatkan budaya riset dalam pengembangan bidang teknologi informasi yang berdayaguna untuk kesejahteraan masyarakat,\n'
                  '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset teknologi informasi dan kearifan lokal,\n'
                  '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangann,\n'
                  '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial,\n'
                  '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu serta tersedianya infrastruktur, dan fasilitas pendidikan yang berkeadilan dan dapat menunjang kebutuhan inklusi,\n'
                  '7. Meningkatkan kerjasama dengan stakeholders baik dalam dan luar negeri.',
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Program Studi',
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // List Program Studi
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProdiData.prodiList.length,
              itemBuilder: (context, index) {
                final programStudi = ProdiData.prodiList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeProdiDetail(
                          programStudi: programStudi,
                        ),
                      ),
                    );
                  },
                  child: buildProdiCard(programStudi),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Profil Pembuat Aplikasi',
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // List Profil Pembuat Aplikasi
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProfilData.profilList.length,
              itemBuilder: (context, index) {
                final profile = ProfilData.profilList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePersonalProfile(
                          profile: profile,
                        ),
                      ),
                    );
                  },
                  child: buildProfileCard(profile),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDescriptionSection({
    required String title,
    required String description,
    required String website,
    required String dekan,
    required String dekanPhoto,
    required String visi,
    required String misi,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.0),
            gradient: const LinearGradient(
              colors: [Colors.orangeAccent, Color.fromRGBO(255, 110, 64, 1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 16.0,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 12.0),
              SizedBox(
                height: 35,
              ),
              // Dekan Card
              buildDekanCard(dekan, dekanPhoto),
              const SizedBox(height: 30),
              Text(
                'Visi:\n$visi',
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                'Misi:\n$misi',
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Trebuchet MS',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30.0),
              Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: double
                          .infinity, // Mengatur lebar tombol menjadi lebar maksimum
                      child: ElevatedButton.icon(
                        onPressed: () => LaunchURL(website),
                        icon: Icon(Icons.public),
                        label: Text('Website Fasilkom'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 85, 0),
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Center(
                    child: SizedBox(
                      width: double
                          .infinity, // Mengatur lebar tombol menjadi lebar maksimum
                      child: ElevatedButton.icon(
                        onPressed: () {
                          launch('mailto:fasilkom@upnjatim.ac.id');
                        },
                        icon: Icon(Icons.email),
                        label: Text('fasilkom@upnjatim.ac.id'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 85, 0),
                          ),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  Widget buildDekanCard(String dekan, String dekanPhoto) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        color: Color.fromARGB(255, 248, 146, 44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            // Dekan's photo at the top
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                dekanPhoto,
                fit: BoxFit.cover,
                height: 380, // Adjust as needed
                width: 380, // Adjust as needed
              ),
            ),
            const SizedBox(height: 16.0),
            // Text and dean's name at the bottom
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dekan Fakultas Ilmu Komputer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(221, 255, 255, 255),
                    fontFamily: 'Trebuchet MS',
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  dekan,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: const Color.fromARGB(221, 255, 255, 255),
                    fontFamily: 'Trebuchet MS',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProdiCard(ProgramStudi programStudi) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
              colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      programStudi.icon,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    programStudi.nama,
                    style: const TextStyle(
                      fontFamily: 'Trebuchet MS',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileCard(PersonalProfile profile) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
              colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      profile.fotoprofil,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    profile.nama,
                    style: const TextStyle(
                      fontFamily: 'Trebuchet MS',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomClipper(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.orangeAccent, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 40);
    path.quadraticBezierTo(size.width / 2, 0, size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
