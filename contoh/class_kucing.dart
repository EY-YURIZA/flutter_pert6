import 'package:flutter/material.dart';

void main() {
 final k=Kucing('Red');
 print(k.nama);
}

class Kucing {
  Kucing(this.nama);
  final String nama;
}
