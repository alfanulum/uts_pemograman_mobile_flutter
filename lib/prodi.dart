class ProgramStudi {
  final String nama;
  final String icon;
  final String deskripsi;
  final String fotokoor;
  final String visi;
  final List<String> misi;
  final String akreditasi;
  final String ketuaProdi;
  final List<String> dosen;
  final String website;
  final String email;
  final List<String> prestasiMahasiswa;
  final Map<String, String> fotoDosen;

  ProgramStudi({
    required this.nama,
    required this.icon,
    required this.deskripsi,
    required this.fotokoor,
    required this.visi,
    required this.misi,
    required this.akreditasi,
    required this.ketuaProdi,
    required this.dosen,
    required this.website,
    required this.email,
    required this.prestasiMahasiswa,
    required this.fotoDosen,
  });
}

class ProdiData {
  static List<ProgramStudi> prodiList = [
    ProgramStudi(
      nama: 'Informatika',
      icon: 'informatika.jpg',
      deskripsi:
          'Penyelenggaraan PS Teknik Informatika di bawah struktur organisasi FTI, dimulai bulan September 2003 pada awal tahun ajaran baru, berdasarkan Surat Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 1424s/D/T/2003. Dalam perkembangannya, PS Teknik Informatika terhitung tanggal 25 Agustus 2007 mendapatkan status “Terakreditasi B” melalui Surat Keputusan 047/Ban-PT/Ak-X/S1/XII/2012.'
          'Pada tanggal 23 Agustus 2016, didirikan Fakultas Ilmu Komputer (FIK), berdasarkan Peraturan Menteri Riset, Teknologi, dan Perguruan Tinggi No. 38 tahun 2015, yang membuat kedudukan organisasi PS Teknik Informatika dan PS Sistem Informasi berubah dari yang semula berada di FTI menjadi di bawah FIK. Seiring dengan perubahan tersebut, sehingga saat ini penyelenggaraan PS Teknik Informatika ditangani di bawah pengelolaan struktur organisasi FIK.',
      visi:
          'Mengembangkan Keilmuan Informatika Yang Unggul Dalam Bidang Sistem Cerdas Tepat Guna Berkarakter Bela Negara.',
      misi: [''],
      akreditasi: 'Akreditasi Baik Sekali',
      fotokoor: 'prodiinformatika/koorprodiinformatika.png',
      ketuaProdi: 'Fetty Tri Anggraeny, S.Kom., M.Kom.',
      dosen: [
        'Fetty Tri Anggraeny, S.Kom. M.Kom',
        'Dr. Basuki Rahmat, S.Si. MT.',
        'Intan Yuniar Purbasari, S.Kom. MSc.',
        'Budi Nugroho, S.Kom. M.Kom.',
        'Chrystia Aji Putra, S.Kom, M.T.',
        'Eva Yulia Puspaningrum, S.Kom., M.Kom',
        'Faisal Muttaqin, S.Kom, M',
        'Firza Prima Aditiawan, S.Kom., MTI',
        'Henni Endah Wahanani, ST. M.Kom.',
        'Mohammad Idhom, SP., S.Kom., MT.',
        'Rizky Parlika, S.Kom, M.Kom.',
        'Sugiarto, S.Kom., M.Kom',
        'Wahyu Syaifullah JS., S.Kom. M.Kom.',
        'Achmad Junaidi, S.Kom, M.Kom',
        'Pratama Wirya Atmaja, S.Kom., M.Kom',
        'Yisti Vita Via, S.ST. M.Kom.',
        'Made Hanindia Prami Swari, S.Kom, M.Cs',
        'Fawwaz Ali Akbar, S.Kom, M.Kom',
        'Eka Prakarsa Mandyartha, S.T., M.Kom',
        'Dr. I Gede Susrama Mas Diyasa, ST., MT.',
        'Dr. Ir. Kartini, S.Kom. MT.',
        'Retno Mumpuni, S.Kom., M.Sc',
        'Afina Lina Nurlaili, S.Kom., M.Kom.',
        'Hendra Maulana, S.Kom., M.Kom.',
        'Agung Mustika Rizki, S.Kom., M.Kom.',
        'Andreas Nugroho Sihananto, S.Kom., M.Kom.',
        'Dr. Eng. Ir. Anggraini Puspita Sari, ST., MT.',
        'M. Muharrom Al Haromainy, S.Kom., M.Kom',
      ],
      website: 'https://if.upnjatim.ac.id/',
      email: 'humas@upnjatim.ac.id',
      fotoDosen: {
        'Fetty Tri Anggraeny, S.Kom. M.Kom':
            'prodiinformatika/koorprodiinformatika.png',
        'Dr. Basuki Rahmat, S.Si. MT.': 'prodiinformatika/pakbasuki.png',
        'Intan Yuniar Purbasari, S.Kom. MSc.': 'prodiinformatika/buintan.png',
        'Budi Nugroho, S.Kom. M.Kom.': 'prodiinformatika/pakbudi.png',
        'Chrystia Aji Putra, S.Kom, M.T.': 'prodiinformatika/pakaji.png',
        'Eva Yulia Puspaningrum, S.Kom., M.Kom': 'prodiinformatika/bueva.png',
        'Faisal Muttaqin, S.Kom, M': 'prodiinformatika/pakfaisal.jpg',
        'Firza Prima Aditiawan, S.Kom., MTI': 'prodiinformatika/pakfirza.png',
        'Henni Endah Wahanani, ST. M.Kom.': 'prodiinformatika/buhenni.png',
        'Mohammad Idhom, SP., S.Kom., MT.': 'prodiinformatika/pakidom.png',
        'Rizky Parlika, S.Kom, M.Kom.': 'prodiinformatika/pakparlika.jpg',
        'Sugiarto, S.Kom., M.Kom': 'prodiinformatika/paksugiarto.png',
        'Wahyu Syaifullah JS., S.Kom. M.Kom.': 'prodiinformatika/pakwahyu.png',
        'Achmad Junaidi, S.Kom, M.Kom': 'prodiinformatika/pakjunaidi.png',
        'Pratama Wirya Atmaja, S.Kom., M.Kom': 'prodiinformatika/pakwirya.png',
        'Yisti Vita Via, S.ST. M.Kom.': 'prodiinformatika/buyisti.png',
        'Made Hanindia Prami Swari, S.Kom, M.Cs': 'prodiinformatika/bumade.png',
        'Fawwaz Ali Akbar, S.Kom, M.Kom': 'prodiinformatika/pakali.png',
        'Eka Prakarsa Mandyartha, S.T., M.Kom': 'prodiinformatika/pakeka.png',
        'Dr. I Gede Susrama Mas Diyasa, ST., MT.':
            'prodiinformatika/pakdiasa.png',
        'Dr. Ir. Kartini, S.Kom. MT.': 'prodiinformatika/bukartini.png',
        'Retno Mumpuni, S.Kom., M.Sc': 'prodiinformatika/buretno.png',
        'Afina Lina Nurlaili, S.Kom., M.Kom.': 'prodiinformatika/bulina.png',
        'Hendra Maulana, S.Kom., M.Kom.': 'prodiinformatika/pakhendra.png',
        'Agung Mustika Rizki, S.Kom., M.Kom.':
            'prodiinformatika/pakmustika.png',
        'Andreas Nugroho Sihananto, S.Kom., M.Kom.':
            'prodiinformatika/pakandreas.png',
        'Dr. Eng. Ir. Anggraini Puspita Sari, ST., MT.':
            'prodiinformatika/buanggraini.png',
        'M. Muharrom Al Haromainy, S.Kom., M.Kom':
            'prodiinformatika/pakmuharrom.png',
      },
      prestasiMahasiswa: [
        'prestasi/infor1.jpg',
        'prestasi/infor2.jpg',
        'prestasi/infor3.jpg',
        'prestasi/infor4.jpg'
      ],
    ),
    ProgramStudi(
      nama: 'Sistem Informasi',
      icon: 'sisteminformasi.jpg',
      deskripsi:
          'Program Studi Sistem Informasi merupakan salah satu dari dua program studi yang dikelola oleh Fakultas Ilmu Komputer (FIK) UPN "Veteran" Jawa Timur. Sebelumnya, program studi ini berada di bawah Fakultas Teknologi Industri sejak didirikan pada tahun 2007. Sejak bergabung dengan FIK, program studi ini telah berperan aktif dalam mencerdaskan kehidupan bangsa melalui kegiatan Tri Dharma Perguruan Tinggi, seperti penelitian dan pengabdian masyarakat. Dengan fokus pada pengembangan sumber daya manusia yang berkualitas, program studi ini menekankan peningkatan mutu pendidikan demi menghasilkan lulusan yang kompeten dalam bidang teknologi informasi. Di tengah arus globalisasi, program studi ini diharapkan mampu menghasilkan lulusan yang dapat bersaing secara internasional. Dengan menekankan pada pengembangan kompetensi, kapabilitas, dan kewirausahaan di bidang IT, Program Studi Sistem Informasi UPN "Veteran" Jawa Timur bertujuan untuk menjadi salah satu pilar penting dalam mendukung perkembangan industri teknologi informasi di Indonesia.',
      visi:
          'Menjadi program studi yang unggul berkarakter bela negara. Visi tersebut diwujudkan ke dalam roadmap keilmuan program studi untuk membangun Smart Village (Desa Cerdas) dengan dukungan teknologi/sistem informasi.',
      misi: [
        'Menghasilkan lulusan yang memiliki pengetahuan, dan kompetensi di bidang manajemen, perencanaan, analisis, desain, pengembangan, evaluasi, audit, dan tata kelola produk sistem informasi untuk mendukung tujuan organisasi/bisnis.',
        'Menghasilkan lulusan yang beretika, mampu berliterasi, berkomunikasi dan berkolaborasi dengan baik, serta mempunyai jiwa kreatif, inovatif, dan adaptif terhadap dinamika organisasi/bisnis yang terus berubah sesuai dengan tren perkembangan jaman.',
        'Menghasilkan lulusan yang cinta tanah air, cerdas berbangsa dan bernegara, yakin Pancasila sebagai dasar negara, rela berkorban untuk bangsa dan negara, serta memiliki kemampuan awal bela negara.'
      ],
      akreditasi: 'Akreditasi Baik Sekali',
      fotokoor: 'prodisifo/pakagung.jpg',
      ketuaProdi: 'Agung Brastama Putra, S.Kom, M.Kom',
      dosen: [
        'Dr. Eng. Agussalim, M.T.',
        'Nur Cahyo Wibowo, S.Kom, M.Kom',
        'Prisa Marga Kusumantara, S.Kom, M.Cs',
        'Mohamad Irwan Afandi, St, M.Sc.',
        'Doddy Ridwandono, S.Kom. M.Kom',
        'Agung Brastama Putra, S.Kom, M.Kom',
        'Siti Mukaromah, S.Kom, M.Kom',
        'Rizka Hadiwiyanti, S.Kom, M.Kom, Mba',
        'Eka Dyar Wahyuni, S.Kom, M.Kom',
        'Amalia Anjani Arifiyanti, S.Kom., M.Kom.',
        'Tri Lathif Mardi Suryanto, S.Kom, Mt',
        'Asif Faroqi, S.Kom, M.Kom.',
        'Arista Pratama, S.Kom, M.Kom.',
        'Eristya Maya Safitri, S.Kom, M.Kom.',
        'Anita Wulansari, S.Kom, M.Kom.',
        'Dhian Satria Yudha Kartika, S.Kom, M.Kom',
        'Seftin Fitri Ana Wati, S.Kom, M.Kom',
        'Anindo Saka Fitri, S.Kom, M.Kom',
        'Abdul Rezha Efrat Najaf, S.Kom, M.Kom',
        'Reisa Permatasari, S.T, M.Kom.',
      ],
      website: 'https://sisfo.upnjatim.ac.id/',
      email: 'piasifo@upnjatim.ac.id',
      fotoDosen: {
        'Dr. Eng. Agussalim, M.T.': 'prodisifo/pakagus.jpg',
        'Nur Cahyo Wibowo, S.Kom, M.Kom': 'prodisifo/pakcahyo.jpg',
        'Prisa Marga Kusumantara, S.Kom, M.Cs': 'prodisifo/pakprisa.jpg',
        'Mohamad Irwan Afandi, St, M.Sc.': 'prodisifo/pakirwan.jpg',
        'Doddy Ridwandono, S.Kom. M.Kom': 'prodisifo/pakdoddy.png',
        'Agung Brastama Putra, S.Kom, M.Kom': 'prodisifo/pakagung.jpg',
        'Siti Mukaromah, S.Kom, M.Kom': 'prodisifo/busiti.jpg',
        'Rizka Hadiwiyanti, S.Kom, M.Kom, Mba': 'prodisifo/burizka.jpg',
        'Eka Dyar Wahyuni, S.Kom, M.Kom': 'prodisifo/bueka.jpg',
        'Amalia Anjani Arifiyanti, S.Kom., M.Kom.': 'prodisifo/buamel.jpg',
        'Tri Lathif Mardi Suryanto, S.Kom, Mt': 'prodisifo/paklatif.jpg',
        'Asif Faroqi, S.Kom, M.Kom.': 'prodisifo/pakasif.jpg',
        'Arista Pratama, S.Kom, M.Kom.': 'prodisifo/pakarista.jpg',
        'Eristya Maya Safitri, S.Kom, M.Kom.': 'prodisifo/bumaya.jpg',
        'Anita Wulansari, S.Kom, M.Kom.': 'prodisifo/buanita.jpg',
        'Dhian Satria Yudha Kartika, S.Kom, M.Kom': 'prodisifo/pakdian.jpg',
        'Seftin Fitri Ana Wati, S.Kom, M.Kom': 'prodisifo/buseftin.jpg',
        'Anindo Saka Fitri, S.Kom, M.Kom': 'prodisifo/buanindo.jpg',
        'Abdul Rezha Efrat Najaf, S.Kom, M.Kom': 'prodisifo/pakefrat.jpg',
        'Reisa Permatasari, S.T, M.Kom.': 'prodisifo/bureisa.jpg',
      },
      prestasiMahasiswa: [
        'prestasisifo.png',
        'prestasi/sifo1.jpg',
        'prestasi/sifo2.jpg',
        'prestasi/sifo3.jpg',
        'prestasi/sifo4.jpg',
        'prestasi/sifo5.jpg',
      ],
    ),
    ProgramStudi(
      nama: 'Sains data',
      icon: 'sainsdata.jpg',
      deskripsi:
          'Sains Data merupakan ilmu terapan yang secara khusus mempelajari dan menganalisis data. Fungsi ilmu Sains Data dalam era digital dan big data saat ini cukup penting karena begitu melimpahnya data yang tersedia. Data menyediakan informasi yang dapat menentukan keputusan penting dalam berbagai sektor industri.'
          'Sains Data adalah ilmu multidisipliner yang dapat diterapkan di berbagai bidang. Sains Data dapat diterapkan di bidang kesehatan, pemerintahan, bisnis, perbankan, keuangan, manufaktur, pemasaran, dan lain-lain.',
      visi:
          'Menjadi program studi sains data yang unggul di bidang Kecerdasan Buatan dan Big Data untuk industri 4.0 berkarakter Bela Negara',
      misi: [
        'Menyelenggarakan pendidikan terbaik di bidang kecerdasan buatan dan Big Data bagi para mahasiswa agar mampu menjadi lulusan yang handal, berkarakter Belanegara, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0.',
        'Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang kecerdasan buatan dan Big Data yang memberikan dampak pada kemajuan disiplin akademik dan profesional.',
        'Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang kecerdasan buatan dan Big Data.',
        'Melaksanakan tata kelola yang baik dan bersih dalam rangka mencapai pengelolaananggaran yang akuntabel.',
        'Mengembangkan kualitas Sumber Daya Manusia yang memiliki karakter unggul, handal, cerdas, dan berjiwa kepemimpinan.',
        'Mengembangkan sistem pengelolaan sarana dan prasarana terintegrasi yang mendukung operasional',
        'Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridarma perguruan tinggi',
      ],
      akreditasi: 'Akreditasi Baik',
      fotokoor: 'prodisada/pakdwi.png',
      ketuaProdi: 'NDr.Eng.Ir.Dwi Arman Prasetya.,ST.,MT.,IPU., Asean. Eng',
      dosen: [
        'Dr. Ir. Mohammad Idhom, S.P., S.Kom., M.T.',
        'Wahyu Syaifullah J. S., S.Kom., M.Kom',
        'Tresna Maulana Fahrudin, S.ST., M.T.',
        'Prismahardi Aji Riyantoko., S.Si, M.Si',
        'Amri Muhaimin, S.Stat., M.Stat., M.S',
        'Trimono, S.Si., M.Si',
        'Kartika Maulida H., S.Kom, M.Kom',
        'Aviolla Terza Damaliana, S.Si, M.Stat',
      ],
      website: 'https://sada.upnjatim.ac.id/',
      email: 'ds@upnjatim.ac.id',
      fotoDosen: {
        'Dr. Ir. Mohammad Idhom, S.P., S.Kom., M.T.': 'prodisada/pakidhom.jpg',
        'Wahyu Syaifullah J. S., S.Kom., M.Kom': 'prodisada/paksyaiful.jpg',
        'Tresna Maulana Fahrudin, S.ST., M.T.': 'prodisada/paktresna.jpg',
        'Prismahardi Aji Riyantoko., S.Si, M.Si': 'prodisada/pakprisma.jpg',
        'Amri Muhaimin, S.Stat., M.Stat., M.S': 'prodisada/pakamri.jpg',
        'Trimono, S.Si., M.Si': 'prodisada/paktrimono.jpg',
        'Kartika Maulida H., S.Kom, M.Kom': 'prodisada/bukartika.jpg',
        'Aviolla Terza Damaliana, S.Si, M.Stat': 'prodisada/buaviola.jpg',
      },
      prestasiMahasiswa: [
        'prestasi/sada1.jpg',
        'prestasi/sada2.jpg',
        'prestasi/sada3.jpg',
      ],
    ),
    ProgramStudi(
      nama: 'Bisnis Digital',
      icon: 'bisnisdigital.png',
      deskripsi:
          'Teknologi Bisnis Digital merupakan ilmu terapan yang secara khusus mempelajari dan menganalisis bisnis melalui teknologi Informasi sebagai dasar dalam pengembangan dan menemukan bisnis secara digital. Fungsi ilmu Teknologi Bisnis Digital dalam era digital dan big data saat ini cukup penting karena begitu melimpahnya data yang tersedia. Data menyediakan informasi yang dapat menentukan keputusan penting dalam berbagai sektor industri.',
      visi:
          '“Menjadi Program Studi yang Unggul di Bidang Intelligent Business untuk Industri 4.0 dan Society 5.0 Berkarakter Bela Negara”.',
      misi: [
        'Menyelenggarakan pendidikan terbaik di bidang Teknologi Bisnis Digital bagi para mahasiswa agar mereka mampu menjadi Sumber Daya Manusia handal, berdaya saing, unggul, dan berwawasan global dan siap menghadapi tantangan di tengah revolusi industri 4.0 dan society 5.0.',
        'Menyelenggarakan penelitian dan pengembangan ilmu pengetahuan di bidang Teknologi Bisnis Digital yang memberikan dampak pada kemajuan disiplin akademik dan profesional.',
        'Menyelenggarakan pengabdian kepada masyarakat dengan menerapkan ilmu-ilmu di bidang Teknologi Bisnis Digital.',
        'Menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintah maupun swasta untuk terus meningkatkan kualitas kegiatan dan hasil tridarma perguruan tinggi.',
      ],
      akreditasi: 'Akreditasi Baik',
      fotokoor: 'prodibisdik/paksugiarto2.jpg',
      ketuaProdi: 'Sugiarto, S.Kom., M.Kom',
      dosen: [
        'Hendra Maulana, S.Kom, M.Kom',
        'Dhian Satria Yudha Kartika, S.Kom, M.Kom',
        'Pratama Wirya Atmaja, S.Kom, M.Kom',
        'Letda KC Taufikurrahman, S.Pd., M.Pd',
      ],
      website: 'https://bisdi.upnjatim.ac.id/',
      email: 'bisdi@upnjatim.ac.id',
      fotoDosen: {
        'Hendra Maulana, S.Kom, M.Kom': 'prodibisdik/pakhendra2.jpg',
        'Dhian Satria Yudha Kartika, S.Kom, M.Kom': 'prodibisdik/pakdian2.jpg',
        'Pratama Wirya Atmaja, S.Kom, M.Kom': 'prodibisdik/pakwirya2.jpg',
        'Letda KC Taufikurrahman, S.Pd., M.Pd': 'prodibisdik/pakletnan.jpg',
      },
      prestasiMahasiswa: [],
    ),
    ProgramStudi(
      nama: 'Magister Teknologi Informasi',
      icon: 'mti.jpg',
      deskripsi:
          'Program Studi Magister Teknologi Informasi UPN “Veteran” Jawa Timur  didirikan agar dapat memberikan kemanfaatan yang besar bagi institusi, dan stakeholder terhadap pengembangan sumber daya bangsa.',
      visi:
          'Menjadi Program Studi yang Unggul di Bidang Teknologi Informasi berbasis Sistem Cerdas yang Berkarakter Bela Negara',
      misi: [
        'Menyelenggarakan pendidikan Magister Teknologi Informasi yang berkualitas dan berkarakter bela negara untuk menghasilkan lulusan yang bermutu dan berdaya saing di tingkat lokal, nasional, dan internasional.',
        'Menyelenggarakan penelitian yang berkualitas untuk menghasilkan publikasi tingkat nasional, internasional, serta hak kekayaan atas intelektual, buku ajar, kebijakan dan teknologi yang berhasil guna dan berdaya guna dalam bidang Teknologi Informasi.',
        'Menyelenggarakan pengabdian kepada masyarakat sebagai pengembangan dan penerapan teknologi informasi dengan mengedepankan sumber daya lokal melalui layanan implementasi, konsultasi, pendampingan, dan pelatihan.',
        'Menjalin kerjasama dengan berbagai lembaga, baik di dalam maupun diluar negeri',
      ],
      akreditasi: 'Akreditasi Baik',
      fotokoor: 'magister/pakagus2.jpg',
      ketuaProdi: 'Dr. Eng. Agussalim, S.Pd., MT.',
      dosen: [
        'Dr. Basuki Rahmat, S.Si., MT',
        'Dr. Gede Susrama Mas Diyasa, ST., MT., IPU',
        'Dr. Rr. Ani Dijah Rahajoe, ST, M.Cs',
        'Dr. Eng. Ir. Dwi Arman Prasetya, S.T., M.T., IPU',
        'Dr. Mohammad Idhom, S.Kom., M.Kom',
        'Dr. Eng. Anggraini Puspita Sari, ST., MT',
      ],
      website: 'https://mti.upnjatim.ac.id/',
      email: 'mti@upnjatim.ac.id',
      fotoDosen: {
        'Dr. Basuki Rahmat, S.Si., MT': 'prodiinformatika/pakbasuki.png',
        'Dr. Gede Susrama Mas Diyasa, ST., MT., IPU': 'magister/pakdiasa2.jpg',
        'Dr. Rr. Ani Dijah Rahajoe, ST, M.Cs': 'magister/buani.png',
        'Dr. Eng. Ir. Dwi Arman Prasetya, S.T., M.T., IPU':
            'prodisada/pakdwi.png',
        'Dr. Mohammad Idhom, S.Kom., M.Kom': 'magister/pakidom2.jpg',
        'Dr. Eng. Anggraini Puspita Sari, ST., MT':
            'prodiinformatika/buanggraini.png',
      },
      prestasiMahasiswa: [],
    ),
  ];
}
