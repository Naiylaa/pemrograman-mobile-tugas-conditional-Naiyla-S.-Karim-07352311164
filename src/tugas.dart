import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan skor Anda (0 - 100): ");
  String? input = stdin.readLineSync();

  // Validasi apakah input kosong atau tidak bisa dikonversi ke angka
  if (input == null || input.isEmpty) {
    print("Error: Input tidak boleh kosong.");
    return;
  }

  int? skor = int.tryParse(input);

  // Validasi apakah input berupa angka
  if (skor == null) {
    print("Error: Input harus berupa angka.");
    return;
  }

  // Validasi rentang skor
  if (skor < 0 || skor > 100) {
    print("Error: Skor harus berada dalam rentang 0 - 100.");
    return;
  }

  String grade;

  // Logika penentuan grade dengan if-else
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Output hasil
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");
}
