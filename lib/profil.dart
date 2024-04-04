class PersonalProfile {
  final String nama;
  final String fotoprofil;
  final String ttl;
  final String alamat;
  final String noHp;
  final String email;
  final String githubUrl;
  final List<String> pendidikan;
  final List<String> penghargaan;

  PersonalProfile({
    required this.nama,
    required this.fotoprofil,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.githubUrl,
    required this.pendidikan,
    required this.penghargaan,
  });
}

class ProfilData {
  static List<PersonalProfile> profilList = [
    PersonalProfile(
      nama: 'Muhammad Alfanul Ulum',
      fotoprofil: 'alfan.jpg',
      ttl: 'Mojokerto, 11 Juli 2003',
      alamat: 'Dsn. Ringgit, Ds. Kembangringgit, Kec. Pungging, Kab. Mojokerto',
      noHp: '085746767019',
      email: '22082010064@student.upnjatim.ac.id',
      githubUrl: 'https://github.com/alfanulum',
      pendidikan: ['SMA 1 Ngoro', 'SMP 1 Ngoro'],
      penghargaan: ['-'],
    ),
    PersonalProfile(
      nama: 'Deva Naufal Arrizky Yacob',
      fotoprofil: 'deva.jpg',
      ttl: 'Sidoarjo, 13 September 2004',
      alamat: 'Perum. Grand Aloha Regency blok B4-14, Kec Taman, Kab. Sidoarjo',
      noHp: '081331618558',
      email: 'mailto:22082010054@student.upnjatim.ac.id',
      githubUrl: 'https://github.com/Vaniliciouz',
      pendidikan: ['SMK 2 Buduran', 'SMP 1 Taman'],
      penghargaan: ['-'],
    ),
  ];
}
