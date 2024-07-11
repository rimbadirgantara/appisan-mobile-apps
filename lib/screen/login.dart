import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:aplikasi_absen/screen/myhomepage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscured = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  Future<void> _login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _errorMessage = 'Please enter your email and password.';
      });
      return;
    }

    final url = Uri.parse('http://localhost:3000/login');
    print('Sending request to: $url');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'email': email, 'password': password}),
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      try {
        final responseData = json.decode(response.body);
        // Handle successful login (e.g., navigate to a new screen)
        print('Login successful: $responseData');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHomePage()),
        );
      } catch (e) {
        setState(() {
          _errorMessage = 'Unexpected response format.';
        });
        print('Error parsing response: ${response.body}');
      }
    } else {
      setState(() {
        _errorMessage = 'Login failed. Please check your credentials.';
      });
      print('Error response: ${response.body}');
    }
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
                    "Login",
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
                      controller: _emailController,
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
                      controller: _passwordController,
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
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 10), // Adjusted horizontal padding
                    child: SizedBox(
                      width: double.infinity, // Make the button full width
                      child: ElevatedButton(
                        onPressed: _login,
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
                          'Login',
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
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        _errorMessage,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: GestureDetector(
                          onTap: () {
                            // Logic to navigate to Register page
                          },
                          child: Text(
                            'Register',
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
