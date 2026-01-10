void main() {
  // Analisis kata "Katak"
  String kata = "Katak";
  print('Analisis Kata: "$kata"');
  
  // 1. Ubah ke huruf kecil
  String kataKecil = kata.toLowerCase();
  
  // 2. Balik kata
  String kataTerbalik = kataKecil.split('').reversed.join('');
  
  // 3. Cek apakah palindrome
  bool isPalindrome = kataKecil == kataTerbalik;
  
  // 4. Output status palindrome
  if (isPalindrome) {
    print('- Status Palindrome: IYA!');
  } else {
    print('- Status Palindrome: TIDAK');
  }
  
  // 5. Hitung jumlah huruf vokal
  List<String> vokal = ['a', 'i', 'u', 'e', 'o'];
  int jumlahVokal = 0;
  
  for (int i = 0; i < kataKecil.length; i++) {
    if (vokal.contains(kataKecil[i])) {
      jumlahVokal++;
    }
  }
  
  // 6. Output jumlah huruf vokal
  print('- Jumlah Huruf Vokal: $jumlahVokal');
}

