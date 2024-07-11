import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscured = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50.0),
                  Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 40.0,
                      color: Color(0xFF75B9BB),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Opacity(
                          opacity: 0.6,
                          child: Icon(Icons.person),
                        ),
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF75B9BB)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        prefixIcon: Opacity(
                          opacity: 0.6,
                          child: Icon(Icons.email),
                        ),
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF75B9BB)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Asal Sekolah",
                        prefixIcon: Opacity(
                          opacity: 0.6,
                          child: Icon(Icons.school),
                        ),
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF75B9BB)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: TextField(
                      obscureText: _isObscured,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Opacity(
                          opacity: 0.6,
                          child: Icon(Icons.lock),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF75B9BB)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0), // Reduced vertical space
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 10), // Adjusted horizontal padding

                    child: SizedBox(
                      width: double.infinity, // Make the button full width
                      child: ElevatedButton(
                        onPressed: () {
                          // Logic untuk tombol Daftar
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(0xFF75B9BB), // Background color
                          padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                              vertical: 10.0), // Adjusted padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: GestureDetector(
                          onTap: () {
                            // Logic untuk pindah ke halaman Login
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xFF75B9BB),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 70.0),
                  Container(
                    height:
                        200.0, // Adjust height as needed or use double.infinity
                    child: Image.asset(
                      'assets/images/loginFooterIMG.png', // Make sure the file name and path are correct
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
