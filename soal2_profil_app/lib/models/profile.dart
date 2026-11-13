class Profile {
  final String nama;
  final String nim;
  final String prodi;
  final String kelas;
  final String bio;
  final String email;
  final String hp;
  final String github;
  final String imagePath;

  const Profile({
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.kelas,
    required this.bio,
    required this.email,
    required this.hp,
    required this.github,
    this.imagePath = 'assets/images/foto.jpg',
  });

  Profile copyWith({
    String? nama,
    String? nim,
    String? prodi,
    String? kelas,
    String? bio,
    String? email,
    String? hp,
    String? github,
    String? imagePath,
  }) {
    return Profile(
      nama: nama ?? this.nama,
      nim: nim ?? this.nim,
      prodi: prodi ?? this.prodi,
      kelas: kelas ?? this.kelas,
      bio: bio ?? this.bio,
      email: email ?? this.email,
      hp: hp ?? this.hp,
      github: github ?? this.github,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  static Profile defaultProfile() {
    return const Profile(
      nama: 'Hanif Iqbal Bagastyo',
      nim: '1124160126',
      prodi: 'Teknik Informatika - Software Engineering',
      kelas: 'TI 24M SE',
      bio: 'Mahasiswa Teknik Informatika yang antusias dengan Mobile Development dan Software Engineering.',
      email: 'hanifbagastyo286@gmail.com',
      hp: '085711328407',
      github: 'github.com/Gipsy-Av',
      imagePath: 'assets/images/foto.jpg',
    );
  }
}
