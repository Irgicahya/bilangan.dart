import 'dart:io';

void main(){
  stdout.write("Masukan Nama Pelanggan: ");
  String namaPelanggan = stdin.readLineSync()!;
  stdout.write("Masukan Nama Barang: ");
  String namaBarang = stdin.readLineSync()!;
  stdout.write("Masukan Jumlah: ");
  int jumlah = int.parse(stdin.readLineSync()!);
  stdout.write("Masukan Harga per Barang: ");
  double harga = double.parse(stdin.readLineSync()!);

  double totalpembayaran = jumlah * harga;
  double potongan = 0.0;

  if (totalpembayaran > 500000){
    potongan = totalpembayaran * 0.2;
  } else if (totalpembayaran > 250000) {
    potongan = totalpembayaran * 0.15 ;
  } else if (totalpembayaran > 100000) {
    potongan = totalpembayaran * 0.02;
  }
  
  double totalpembayaransetelahpotongan = totalpembayaran - potongan;

  stdout.write("Masukan Jumlah Uang Tunai: Rp");
  int uangTunai = int.parse(stdin.readLineSync()!);

  if (uangTunai < totalpembayaran) {
    print(" uang tunai kurang. pembayaran tidak dapat diproses.");
  }

  var kembalian = uangTunai - totalpembayaran;

  print("\nRincian Transaksi: ");
  print("Nama Pelanggan: $namaPelanggan");
  print("Nama Barang: $namaBarang");
  print("Jumlah: $jumlah");
  print("Harga Per Barang: Rp $harga");
  print("Total pembayaran sebelum potongan: Rp$totalpembayaran");
  print("Jumlah Uang Tunai: Rp $uangTunai");
  print("kembalian: Rp $kembalian");
  print("Potongan: Rp $potongan");
  print("Total pembayaran setelah potongan: Rp $totalpembayaransetelahpotongan");
}