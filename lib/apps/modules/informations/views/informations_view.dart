import 'package:flutter/material.dart';

class InformationsView extends StatelessWidget {
  const InformationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Panduan Menggunakan Aplikasi Prediksi Usia Sawi',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Berikut adalah langkah-langkah untuk menggunakan aplikasi prediksi usia sawi:',
                  ),
                  SizedBox(height: 12),
                  Text(
                      '1. Mulai aplikasi prediksi usia sawi di perangkat Anda.'),
                  Text('2. Pilih menu "Prediksi" dari beranda aplikasi.'),
                  Text(
                      '3. Pilih opsi "Kamera" untuk mengambil foto sawi dengan kamera, atau "Galeri" untuk memilih gambar dari galeri.'),
                  Text(
                      '4. Setelah gambar diambil atau dipilih, gambar terload otomatis untuk memulai proses prediksi usia sawi.'),
                  Text(
                      '5. Kemudian, gambar akan ditampilkan pada layar aplikasi.'),
                  Text(
                      '6. Hasil prediksi akan ditampilkan di layar di bawah gambar hasil input, menunjukkan usia sawi dan kadar PPM-nya.'),
                  Text(
                      '7. Note: jarak pengambilan gambar melalui jarak 30 cm dari usia 1 hingga 30 hari dan jarak pengambilan gambar melalui jarak 45 cm ketika usia 31 hingga 40.'),
                  SizedBox(height: 12),
                  Text(
                    'Semoga panduan ini membantu Anda dalam menggunakan aplikasi prediksi usia sawi',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
