// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_super_parameters, use_key_in_widget_constructors, sort_child_properties_last

// import 'package:aplikasi_absen/screen/splashScreen.dart';
import 'package:aplikasi_absen/screen/dafsiswa.dart';
import 'package:aplikasi_absen/screen/keputusan.dart';
import 'package:aplikasi_absen/screen/login.dart';
import 'package:aplikasi_absen/screen/myhomepage.dart';
import 'package:aplikasi_absen/screen/register.dart';
import 'package:aplikasi_absen/screen/SplashScreen.dart';
import 'package:aplikasi_absen/screen/tamkeputusan.dart';
import 'package:aplikasi_absen/screen/tamsiswa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APPISAN',
      // home: Dafsiswa(),
      // home: Keputusan(),
      home: Login(),
      // home: MyHomePage(),
      // home: Register(),
      // home: splash_screen(),
      // home: Tambah_keputusan(),
      // home: Tambah_siswa(),
    );
  }
}
