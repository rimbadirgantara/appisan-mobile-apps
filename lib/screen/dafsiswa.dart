import 'package:flutter/material.dart';

class Dafsiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Siswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StudentDataScreen(),
    );
  }
}

class StudentDataScreen extends StatelessWidget {
  final List<Map<String, String>> students = [
    {'name': 'Budi', 'class': '10A', 'gender': 'Laki-laki'},
    {'name': 'Siti', 'class': '10B', 'gender': 'Perempuan'},
    {'name': 'Andi', 'class': '10C', 'gender': 'Laki-laki'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3AB3B8), // Warna yang sesuai dengan gambar
        title: Center(child: Text('Data Siswa')), // Memusatkan judul
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3AB3B8), // Warna gradasi atas sesuai dengan gambar
              Color(0xFF349FA1) // Warna gradasi bawah sesuai dengan gambar
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text('Nama: ${students[index]['name']}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kelas: ${students[index]['class']}'),
                    Text('Jenis Kelamin: ${students[index]['gender']}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan kode untuk onPressed di sini
        },
        backgroundColor:
            Color(0xFF349FA1), // Warna sesuai dengan tema warna gambar
        child: Icon(Icons.person_add),
      ),
    );
  }
}
