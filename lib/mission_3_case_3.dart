void main() {
  // Analisis kata "Katak"
  String kata = "Katak";
  print('Analisis Kata: "$kata"');
  
  // 1. Ubah ke huruf kecil
  // ✅ Good! Best Practice: String comparison memang sebaiknya case-insensitive.
  String kataKecil = kata.toLowerCase();
  
  // 2. Balik kata
  // 🔥 Excellent! Ini adalah "Dart One-Liner" yang sangat efisien.
  // Insight: split('') memecah string jadi List<String>, reversed membalik urutan (Lazy Iterable), join menyatukan kembali.
  String kataTerbalik = kataKecil.split('').reversed.join('');
  
  // 3. Cek apakah palindrome
  // 💡 Pro Tip: Untuk kata yang SANGAT panjang, membalik seluruh string akan memakan memori O(N).
  // Alternatif hemat memori: Cek karakter pertama vs terakhir menggunakan index (Two Pointer technique).
  bool isPalindrome = kataKecil == kataTerbalik;
  
  // 4. Output status palindrome
  if (isPalindrome) {
    print('- Status Palindrome: IYA!');
  } else {
    print('- Status Palindrome: TIDAK');
  }
  // 💡 Tip: Bisa gunakan ternary operator: print("- Status Palindrome: ${isPalindrome ? 'IYA' : 'TIDAK'}");
  
  // 5. Hitung jumlah huruf vokal
  // ⚠️ Insight Performance: List lookup menggunakan .contains() adalah O(N).
  // Jika list vokal panjang, sebaiknya gunakan Set<String> vokal = {'a', 'i', ...} karena Set lookup adalah O(1) (instant).
  List<String> vokal = ['a', 'i', 'u', 'e', 'o'];
  int jumlahVokal = 0;
  
  // 💡 Modern Dart Tip: Gunakan loop 'for-in' agar lebih bersih:
  // for (var char in kataKecil.split('')) { ... }
  for (int i = 0; i < kataKecil.length; i++) {
    if (vokal.contains(kataKecil[i])) {
      jumlahVokal++;
    }
  }
  
  // 🚀 Challenge Level: Bisa pakai One-Liner lho!
  // int jumlahVokal = kataKecil.split('').where((c) => 'aiueo'.contains(c)).length;
  
  // 6. Output jumlah huruf vokal
  print('- Jumlah Huruf Vokal: $jumlahVokal');
  // 🎉 Logic berjalan sempurna!
}

