import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Hanif Iqbal Bagastyo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Menu Informasi ditekan')),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 16),
              Text(
                'Hanif Iqbal Bagastyo',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                'NIM: 2401010123',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'Teknik Informatika - Software Engineering',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Kontak',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'hanifbagastyo286@gmail.com',
                      ),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'Nomor HP',
                        value: '+62 857-1132-8407',
                      ),
                      InfoTile(
                        icon: Icons.school,
                        label: 'Kelas',
                        value: 'TI 24M SE',
                      ),
                      InfoTile(
                        icon: Icons.code,
                        label: 'Akun GitHub',
                        value: 'github.com/Gipsy-Av',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Keahlian / Hobi',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              const Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    children: [
                      InfoTile(
                        icon: Icons.phone_android,
                        label: 'Mobile Development',
                        value: 'Flutter & Dart',
                      ),
                      InfoTile(
                        icon: Icons.web,
                        label: 'Frontend Web',
                        value: 'HTML, CSS, JavaScript, React, Tailwind, Bootstrap',
                      ),
                      InfoTile(
                        icon: Icons.palette,
                        label: 'Hobi',
                        value: 'Badminton & Menonton Film',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
 
  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
