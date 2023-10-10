import 'dart:io';

void main() {
  print('Masukkan sebuah bilangan: ');

  var bilangan = double.parse(stdin.readLineSync()!);
  if (bilangan > 0) {
    print('$bilangan adalah bilangan positif.');
  } else if (bilangan < 0) {
    print('$bilangan adalah bilangan negatif.');
  } else {
    print('$bilangan adalah nol.');
  }
}
