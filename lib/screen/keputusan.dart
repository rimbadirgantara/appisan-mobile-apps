import 'package:flutter/material.dart';

class Keputusan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hasil Keputusan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DecisionResultScreen(),
    );
  }
}

class DecisionResultScreen extends StatelessWidget {
  // Data siswa untuk ditampilkan
  final List<Map<String, String>> students = [
    {"name": "John Doe", "major": "Computer Science", "decision": "2"},
    {"name": "Jane Smith", "major": "Engineering", "decision": "3"},
    {"name": "Michael Brown", "major": "Mathematics", "decision": "4"},
    // Tambahkan data siswa lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3AB3B8),
        title: Center(child: Text('Hasil Keputusan')),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3AB3B8),
              Color(0xFF349FA1),
            ],
          ),
        ),
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama: ${students[index]["name"]}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Jurusan: ${students[index]["major"]}',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Nilai Keputusan: ${students[index]["decision"]}',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan kode untuk onPressed di sini
        },
        backgroundColor: Color(0xFF349FA1),
        child: Icon(Icons.note_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
