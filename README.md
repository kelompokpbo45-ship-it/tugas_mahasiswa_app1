📚 Aplikasi Manajemen Tugas Mahasiswa
Deskripsi

Aplikasi ini dibuat untuk mempermudah mahasiswa dalam mengelola tugas kuliah.
Fitur utama mencakup menambah tugas, melihat daftar tugas, menandai tugas selesai/belum, dan detail tugas.
Tampilan dibuat modern dan menarik, dengan gradient warna, kotak informasi, dan icon yang representatif.


kelompok 5 PBO
1, farid hidayat
2, sri wahyuni
3, aditya maulana
4, farhan firjatullah
5, rizki febriansyah
6, astuti puji


Struktur Tim dan Peran

Kelompok: 5

Project Manager – Sri Wahyuni

Mengatur dan memantau jalannya proyek.

Menentukan timeline dan pembagian tugas anggota tim.

Menyusun strategi pengembangan agar proyek selesai tepat waktu.

Frontend Developer – Farid Hidayat

Bertanggung jawab pada desain dan implementasi antarmuka aplikasi.

Membuat tampilan login, home, tambah tugas, dan detail tugas agar user-friendly dan modern.

Menambahkan elemen visual seperti kotak warna, gradient, icon, dan tombol kontras.

Backend Developer – Aditya Maulana & Farhan Firjatullah

Mengelola logika aplikasi dan data model (Task model, status tugas, dll).

Menangani proses menambah, mengubah, dan menandai tugas selesai.

Memastikan data aplikasi berjalan lancar dan sinkron dengan antarmuka.

Database Engineer – Rizki Febriansyah

Merancang struktur penyimpanan data (walau aplikasi ini masih menggunakan in-memory data).

Menyediakan konsep database dan data flow agar dapat dikembangkan ke database nyata di masa depan.

Tester & Dokumentasi – Astuti Puji

Melakukan uji coba aplikasi untuk menemukan bug dan memastikan semua fitur berjalan.

Membuat dokumentasi proyek termasuk README, penjelasan fitur, dan petunjuk penggunaan.


Fitur Utama

Login Mahasiswa

Login dengan tampilan modern.

Icon toga (Icons.school) untuk representasi mahasiswa.

Ucapan selamat datang “Selamat Datang Mahasiswa” dan instruksi singkat.

Home Page

Menampilkan daftar tugas yang sudah ada.

Menandai tugas yang belum selesai dan sudah selesai.

Kotak informasi berwarna untuk highlight jumlah tugas atau tugas penting.

Tombol Logout jelas terlihat dan mudah diakses.

Tambah Tugas (Add Task Page)

Formulir modern untuk menambahkan tugas baru.

Input: Nama Tugas, Deskripsi, Deadline.

Tombol kontras agar tulisan jelas terbaca.

Detail Tugas (Task Detail Page)

Menampilkan detail tugas: nama, deskripsi, status, deadline.

Bisa menandai tugas sebagai selesai atau belum selesai.

Struktur Folder
lib/
 ├─ main.dart               # Entry point aplikasi
 ├─ model/
 │   └─ task_model.dart     # Model Task
 └─ screens/
     ├─ login_page.dart     # Halaman Login
     ├─ home_page.dart      # Halaman Home / Daftar Tugas
     ├─ add_task_page.dart  # Halaman Tambah Tugas
     └─ task_detail_page.dart # Halaman Detail Tugas



Cara Menjalankan Aplikasi

Pastikan sudah menginstall Flutter SDK terbaru.

Clone atau download repository ini.

Masuk ke folder proyek:

cd flutter_application_1


Ambil dependency:

flutter pub get


Jalankan aplikasi (contoh di Chrome):

flutter run -d chrome


Login menggunakan username apa saja untuk mencoba aplikasi.

Catatan

Aplikasi menggunakan Icon Toga (Icons.school) sehingga tidak memerlukan file gambar tambahan.

Tombol-tombol dan teks dibuat kontras agar mudah terbaca.

Tampilan halaman modern dan rapi, sesuai tugas mahasiswa.