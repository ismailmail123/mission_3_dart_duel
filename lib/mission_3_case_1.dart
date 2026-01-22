void main() {
  // 1. Buat List<Map<String, dynamic>> bernama teman
  // ✅ Good job! Tipe data sudah sesuai.
  List<Map<String, dynamic>> teman = [
    // 2. Isi dengan minimal 3 data
    {'name': 'Budi', 'ultah': '2000-01-15'},
    {'name': 'Siti', 'ultah': '2005-01-22'},
    // 3. Satu data dengan tanggal lahir null atau kosong
    {'name': 'Andi', 'ultah': ''},
    {'name': 'Dewi', 'ultah': '2002-03-10'},
  ];

  // 4. Gunakan DateTime.now() untuk mendapatkan bulan saat ini
  DateTime sekarang = DateTime.now();
  int bulanSekarang = sekarang.month;
  int tahunSekarang = 2026; // Sesuai petunjuk (tahun sekarang 2026)

  // Fungsi untuk mendapatkan nama bulan
  // 💡 Tip: Bisa gunakan List string untuk nama bulan agar lebih ringkas: const ['JANUARI', ...][bulan-1].
  String getNamaBulan(int bulan) {
    switch (bulan) {
      case 1:
        return 'JANUARI';
      case 2:
        return 'FEBRUARI';
      case 3:
        return 'MARET';
      case 4:
        return 'APRIL';
      case 5:
        return 'MEI';
      case 6:
        return 'JUNI';
      case 7:
        return 'JULI';
      case 8:
        return 'AGUSTUS';
      case 9:
        return 'SEPTEMBER';
      case 10:
        return 'OKTOBER';
      case 11:
        return 'NOVEMBER';
      default:
        return 'DESEMBER';
    }
  }

  String namaBulanSekarang = getNamaBulan(bulanSekarang);
  print("DAFTAR ULANG TAHUN BULAN $namaBulanSekarang:");

  int count = 0;
  int urutan = 1;
  bool tampilkanPesanAndi = false;

  // 5. Gunakan perulangan
  for (var data in teman) {
    String nama = data['name'];
    String? ultah = data['ultah'];

    // 6. Cek jika ultah null atau kosong
    if (ultah == null || ultah.isEmpty) {
      // ⚠️ Note: Hindari hardcode nama 'Andi'. Gunakan variable 'nama' agar dinamis untuk data lain.
      // 💡 Sebaiknya langsung print pesan error di sini sesuai instruksi.
      if (nama == 'Andi') {
        tampilkanPesanAndi = true;
      }
      continue; // Lanjut ke data berikutnya
    }

    // Parse tanggal lahir
    DateTime tanggalLahir = DateTime.parse(ultah);
    int bulanLahir = tanggalLahir.month;
    int tahunLahir = tanggalLahir.year;

    // Hanya tampilkan yang bulan lahirnya sama dengan bulan saat ini
    if (bulanLahir == bulanSekarang) {
      int usia = tahunSekarang - tahunLahir;

      // Format output sesuai contoh
      print("$urutan. Risers $nama: Wah, lagi ultah nih! Umurnya sekarang $usia tahun.");

      urutan++;
      count++;
    }
  }

  // 🧐 Logic ini kurang efektif jika data kosong bukan 'Andi'.
  // Tampilkan pesan Andi jika ada
  if (tampilkanPesanAndi) {
    print("\n- Data Andi tidak lengkap, dilewati...");
  }

  print("\n[Total ada $count teman yang harus kamu hubungi!]");
}


