import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanScaffold(),
    );
  }
}

class HalamanScaffold extends StatelessWidget {
  const HalamanScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran setengah dari lebar layar secara dynamic
    double setengahLebarLayar = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Row dan Column Flutter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            debugPrint('Tombol Back ditekan');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- ROW 1 ---
            Row(
              children: [
                // Container pertama (Biru)
                Container(
                  height: 100,
                  width: setengahLebarLayar,
                  color: Colors.blue,
                ),
                // Container kedua (Merah)
                Container(
                  height: 100,
                  width: setengahLebarLayar,
                  color: Colors.red,
                ),
              ],
            ),

            // --- COLUMN 1 (Di bawah Row 1) ---
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container pertama (Hijau)
                Container(
                  height: 150,
                  width: setengahLebarLayar,
                  color: Colors.green,
                ),
                // Container kedua (Kuning)
                Container(
                  height: 150,
                  width: setengahLebarLayar,
                  color: Colors.yellow,
                ),
              ],
            ),

            // --- ROW 2 (Di bawah Column 1) ---
            Row(
              children: [
                // Container pertama (Oranye)
                Container(
                  height: 80,
                  width: setengahLebarLayar,
                  color: Colors.orange,
                ),
                // Container kedua (Ungu)
                Container(
                  height: 80,
                  width: setengahLebarLayar,
                  color: Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tombol Aksi Ditekan!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        child: const Icon(Icons.work_outline),
      ),
    );
  }
}
