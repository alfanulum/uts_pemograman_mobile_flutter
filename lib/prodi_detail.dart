import 'package:flutter/material.dart';
import 'prodi.dart';
import 'url.dart';

class HomeProdiDetail extends StatelessWidget {
  final ProgramStudi programStudi;

  const HomeProdiDetail({Key? key, required this.programStudi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          programStudi.nama,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Trebuchet MS',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 76, 0, 255),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 76, 0, 255),
              Color.fromARGB(255, 166, 14, 212),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 242, 0, 255).withOpacity(0.3),
                          spreadRadius: 10,
                          blurRadius: 15,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        programStudi.icon,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Profil ${programStudi.nama}:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 16),
              Text(
                programStudi.deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Visi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 2),
              Text(
                programStudi.visi,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Misi:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                itemCount: programStudi.misi.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '- ${programStudi.misi[index]}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Trebuchet MS',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 9),
              Text(
                'Akreditasi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 2),
              Text(
                programStudi.akreditasi,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Card(
                    elevation: 4,
                    color: Color.fromARGB(255, 166, 14, 212),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Ketua Program Studi',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Trebuchet MS',
                            ),
                          ),
                          SizedBox(height: 20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              programStudi.fotokoor,
                              height: 150,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            programStudi.ketuaProdi,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Trebuchet MS',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Dosen:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Trebuchet MS',
                    ),
                  ),
                  SizedBox(height: 12),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: programStudi.dosen.map((dosen) {
                      String photoPath =
                          programStudi.fotoDosen[dosen] ?? 'default.jpg';
                      print('Dosen: $dosen, Photo Path: $photoPath');
                      return SizedBox(
                        height: 265,
                        width: MediaQuery.of(context).size.width / 2 - 36,
                        child: Card(
                          elevation: 4,
                          color: Color.fromARGB(255, 166, 14, 212),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.asset(
                                    'assets/$photoPath',
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  dosen,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Trebuchet MS',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Prestasi Mahasiswa:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Trebuchet MS',
                    ),
                  ),
                  SizedBox(height: 12),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: programStudi.prestasiMahasiswa.map((prestasi) {
                      return SizedBox(
                        height: 500,
                        width: 400,
                        child: Image.asset(
                          'assets/$prestasi',
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 24),
                  // Tombol untuk membuka website resmi
                  TextButton.icon(
                    onPressed: () {
                      LaunchURL(programStudi.website);
                    },
                    icon: Icon(Icons.language),
                    label: Text(
                      'Website Prodi',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Trebuchet MS',
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 255, 255)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 0, 0, 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  // Tombol untuk membuka email
                  TextButton.icon(
                    onPressed: () {
                      LaunchURL('mailto:' + programStudi.email);
                    },
                    icon: Icon(Icons.email),
                    label: Text(
                      'Email Prodi',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Trebuchet MS',
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 255, 255)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 0, 0, 0)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
