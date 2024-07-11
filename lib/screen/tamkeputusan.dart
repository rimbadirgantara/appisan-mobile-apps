import 'package:flutter/material.dart';

class Tambah_keputusan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Keputusan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DecisionFormScreen(),
    );
  }
}

class DecisionFormScreen extends StatefulWidget {
  @override
  _DecisionFormScreenState createState() => _DecisionFormScreenState();
}

class _DecisionFormScreenState extends State<DecisionFormScreen> {
  final _formKey = GlobalKey<FormState>();

  // Form fields
  String studentName = '';
  String scholarship = '';
  String parentIncome = '';
  String achievements = '';
  String accreditation = '';
  String semesterGrade = '';
  String supervisor = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF3AB3B8), Color(0xFF349FA1)],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Form Keputusan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        studentName = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Nama Siswa',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama siswa tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        scholarship = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Beasiswa',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        parentIncome = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Penghasilan Orang Tua',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        achievements = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Prestasi',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        accreditation = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Akreditasi',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        semesterGrade = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Nilai Semester',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value) {
                        supervisor = value;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF3AB3B8).withOpacity(0.1),
                        labelText: 'Dosen Pembimbing',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Simpan data atau lakukan aksi lainnya
                          // Contoh:
                          print('Nama Siswa: $studentName');
                          print('Beasiswa: $scholarship');
                          print('Penghasilan Orang Tua: $parentIncome');
                          print('Prestasi: $achievements');
                          print('Akreditasi: $accreditation');
                          print('Nilai Semester: $semesterGrade');
                          print('Dosen Pembimbing: $supervisor');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3AB3B8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 15,
                        ),
                      ),
                      child: Text(
                        'Buat Keputusan',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
