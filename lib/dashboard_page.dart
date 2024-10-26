import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final String username; // Variabel untuk menyimpan username

  // Menerima username melalui konstruktor
  const DashboardPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        automaticallyImplyLeading: false, // Menghapus tombol kembali
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2196F3), // Biru Muda
              Color(0xFF0D47A1), // Biru Tua
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menampilkan pesan selamat datang dengan username
              Text(
                'Selamat Datang di MyRepv, $username!',
                style: const TextStyle(
                    fontSize: 24, color: Colors.white), // Warna teks putih
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Kembali ke halaman Login
                },
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
