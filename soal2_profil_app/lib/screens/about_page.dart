import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final keahlianHobi = [
      {
        'icon': Icons.phone_android_rounded,
        'judul': 'Mobile Development',
        'deskripsi': 'Flutter & Dart untuk pengembangan aplikasi multiplatform',
      },
      {
        'icon': Icons.web_rounded,
        'judul': 'Frontend Web Development',
        'deskripsi': 'HTML5, CSS3, JavaScript, React, Tailwind CSS',
      },
      {
        'icon': Icons.storage_rounded,
        'judul': 'Database & Backend Dasar',
        'deskripsi': 'MySQL, REST API, dan Firebase',
      },
      {
        'icon': Icons.sports_tennis_rounded,
        'judul': 'Hobi Badminton & Film',
        'deskripsi': 'Bermain bulutangkis dan menonton film teknologi/sci-fi',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Keahlian & Hobi',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          ...keahlianHobi.map((item) => Card(
                elevation: 1.5,
                margin: const EdgeInsets.only(bottom: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: theme.colorScheme.primaryContainer,
                    child: Icon(item['icon'] as IconData,
                        color: theme.colorScheme.primary),
                  ),
                  title: Text(item['judul'] as String,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(item['deskripsi'] as String),
                ),
              )),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
