class Mahasiswa {
  Mahasiswa(this.nama, this.nim, this.prodi, this.nilai);
  final String nama;
  final String nim;
  final String prodi;
  final String nilai;

  String perkenalanMahasiswa() {
    return 'Nama: $nama, NIM: $nim, Prodi: $prodi';
  }

  String nilaiAkhir() {
    return 'Ujian nilai $nilai';
  }
}

class MahasiswaBaru {
  MahasiswaBaru({required this.nama, required this.nim, required this.prodi});
  final String nama;
  final String nim;
  final String prodi;

  String informasiMahasiswaBaru() {
    return 'Nama: $nama, NIM: $nim, Prodi: $prodi';
  }
}

void main() {
  // Menggunakan data nama dan NIM kamu sendiri
  final m = Mahasiswa('Aditya Ramadhan Khiang', '1124160084', 'Software Engineering', '95');
  final b = MahasiswaBaru(nama: 'Aditya Ramadhan Khiang', nim: '1124160084', prodi: 'Software Engineering');

  print(m.nama);
  print(m.nim);
  print(m.perkenalanMahasiswa());
  print(m.nilaiAkhir());
  print(b.informasiMahasiswaBaru());
}