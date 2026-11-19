# UTS Pemrograman Mobile Lanjutan (PML)

Repository Ujian Tengah Semester (UTS) mata kuliah Pemrograman Mobile Lanjutan (PML) - Semester Ganjil 2026/2027.

---

## Identitas Mahasiswa
- **Nama Lengkap**: Hanif Iqbal Bagastyo
- **NIM**: 1124160126
- **Kelas**: TI 24M SE
- **Program Studi**: Teknik Informatika (Software Engineering)
- **Perguruan Tinggi**: Institut Teknologi & Bisnis Bina Sarana Global
- **Dosen Pengampu**: IKetut Gunawan

---

## Link Video Presentasi YouTube
- **URL Video**: https://youtu.be/OqSobWJH_6g
- **Judul Video**: UTS PML – Aplikasi Profil – Hanif Iqbal Bagastyo – 1124160126

---

## Download APK Release (v1.0.0)
- **Halaman GitHub Release**: [Release v1.0.0](https://github.com/Gipsy-Av/uts-pml-1124160126/releases/tag/v1.0.0)
- **Direct Download APK**: [app-release.apk (47.2 MB)](https://github.com/Gipsy-Av/uts-pml-1124160126/releases/download/v1.0.0/app-release.apk)

---

## Struktur Proyek
Repository ini terdiri dari dua proyek Flutter:
1. `soal1_live_coding/` : Proyek Live Coding Halaman Profil Mahasiswa (100% StatelessWidget).
2. `soal2_profil_app/` : Proyek Aplikasi Profil Mahasiswa Android (Fitur Edit Profil, Form Validasi, ListView Tentang Saya, Scaffold Lengkap, dan Mode Gelap).

---

## Fitur Soal 2 (Profil Mahasiswa App)
1. **Identitas Aplikasi**: Nama aplikasi di Android terkonfigurasi menjadi `Profil Hanif` (`android:label`).
2. **Halaman Profil (Tanpa Login)**:
   - Foto profil diri dari direktori `assets/images/foto.jpg` menggunakan `CircleAvatar`.
   - Informasi lengkap: Nama, NIM, Prodi, Kelas, dan Bio singkat.
   - Kartu Informasi Kontak (Email, No HP/WhatsApp, GitHub) dengan reusable widget `InfoTile`.
3. **Halaman Edit Profil**:
   - Form input data profil dengan inisialisasi awal dari `TextEditingController`.
   - **Validasi Input**:
     - Nama: Wajib diisi.
     - Email: Wajib diisi dan format email valid (memiliki `@` dan `.`).
     - Nomor HP: Wajib diisi, hanya angka, dan dibatasi 10 - 13 digit.
     - Prodi, Kelas, GitHub, dan Bio singkat.
   - Tombol Simpan mengembalikan data terbaru ke Halaman Profil via `Navigator.pop(context, updatedProfile)` dan memperbarui tampilan secara langsung dengan `setState()`.
4. **Halaman Tentang Saya**:
   - Menampilkan daftar keahlian & hobi (minimal 3 item) menggunakan `ListView`.
   - Menampilkan riwayat jenjang pendidikan formal (SDN Gandasari 2, SMPN 08, SMAN 11, Institut Global) menggunakan `ListView`.
5. **Scaffold Lengkap**:
   - `AppBar` dengan judul dan tombol aksi edit.
   - `Drawer` navigasi samping dengan header profil `UserAccountsDrawerHeader`, menu navigasi, dan tombol toggle tema.
   - `FloatingActionButton` untuk akses cepat edit profil.
6. **Tema Dinamis (Light & Dark Mode)**:
   - Konfigurasi tema kustom Material 3 (`ColorScheme.fromSeed`).
   - Switch mode gelap di dalam aplikasi (`SwitchListTile`) yang mengubah `themeMode` secara langsung (real-time).

---

## Cara Menjalankan Aplikasi
1. Buka terminal dan arahkan ke folder proyek:
   ```bash
   cd soal2_profil_app
   ```
2. Ambil seluruh dependensi:
   ```bash
   flutter pub get
   ```
3. Jalankan aplikasi pada perangkat/emulator yang aktif:
   ```bash
   flutter run
   ```

---

## Cara Build APK Release
Untuk menghasilkan file installer APK release:
```bash
cd soal2_profil_app
flutter build apk --release
```
Hasil file APK berada pada:
`build/app/outputs/flutter-apk/app-release.apk`
