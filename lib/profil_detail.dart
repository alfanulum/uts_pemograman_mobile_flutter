import 'package:flutter/material.dart';
import 'profil.dart';
import 'url.dart';

class HomePersonalProfile extends StatelessWidget {
  final PersonalProfile profile;

  const HomePersonalProfile({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          profile.nama,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Trebuchet MS',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 4, 29, 255),
        elevation: 0,
      ),
      body: Container(
        constraints: BoxConstraints
            .expand(), // Menjadikan kontainer mengisi seluruh ruang yang tersedia
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 4, 29, 255),
              Color.fromARGB(255, 4, 155, 255),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 0, 234, 255).withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 15,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      profile.fotoprofil,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Profil:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Trebuchet MS',
                ),
              ),
              SizedBox(height: 5),
              _buildProfileInfo('Nama', profile.nama),
              _buildProfileInfo('Tempat, Tgl. Lahir', profile.ttl),
              _buildProfileInfo('Alamat', profile.alamat),
              _buildProfileInfo('No. HP', profile.noHp),
              SizedBox(height: 24),
              _buildSectionTitle('Riwayat Pendidikan:'),
              _buildList(profile.pendidikan),
              SizedBox(height: 24),
              _buildSectionTitle('Penghargaan:'),
              _buildList(profile.penghargaan),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildLinkButton(
                    onPressed: () => LaunchURL(profile.githubUrl),
                    icon: Icons.public,
                    label: 'GitHub',
                  ),
                  _buildLinkButton(
                    onPressed: () {
                      LaunchURL('mailto:' + profile.email);
                    },
                    icon: Icons.email,
                    label: 'Email',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Text(
      '$label: $value',
      style: TextStyle(
        fontSize: 17,
        color: Colors.white,
        fontFamily: 'Trebuchet MS',
      ),
    );
  }

  Widget _buildLinkButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.blue),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontFamily: 'Trebuchet MS',
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Trebuchet MS',
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Text(
          '- $item',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'Trebuchet MS',
          ),
        );
      }).toList(),
    );
  }
}
