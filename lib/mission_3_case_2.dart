// ✅ Good job! Struktur class sudah benar.
class BankAccount {
  // Property
  String namaPemilik;
  double saldo;

  // Constructor
  BankAccount(this.namaPemilik, this.saldo);

  // Fungsi setor
  void setor(double jumlah) {
    // 💡 Tip: Bisa tambahkan validasi jika jumlah < 0 agar lebih aman.
    saldo += jumlah;
    print('  - Setor tunai: Rp ${jumlah.toStringAsFixed(1)} -> Sukses!');
    print('  - Saldo sekarang: Rp ${saldo.toStringAsFixed(1)}');
  }

  // Fungsi tarik
  void tarik(double jumlah) {
    print('\n    - Tarik tunai: Rp ${jumlah.toStringAsFixed(1)}');

    if (jumlah > saldo) {
      double kurang = jumlah - saldo;
      print(
        '    - GAGAL: Maaf, saldo kamu kurang Rp ${kurang.toStringAsFixed(1)} lagi nih!',
      );
    } else {
      // ✅ Logic sudah tepat! Saldo hanya berkurang jika cukup.
      saldo -= jumlah;
      print('    - Sukses! Saldo tersisa: Rp ${saldo.toStringAsFixed(1)}');
    }
  }
}

void main() {
  // Membuat objek nasabah sesuai contoh output
  BankAccount nasabah = BankAccount('MR STARK', 1000000.0);

  // Output sesuai format
  print('Halo ${nasabah.namaPemilik}!');
  print('  - Saldo awal: Rp ${nasabah.saldo.toStringAsFixed(1)}');

  // Setor tunai
  nasabah.setor(500000.0);

  // Tarik tunai (contoh yang akan gagal)
  nasabah.tarik(2000000.0);
  
  // 🌟 Challenge: Coba tambahkan skenario tarik tunai yang berhasil juga di sini.
}
