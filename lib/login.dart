import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/auth.dart';
import 'package:Medics/signUp.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String Line = "assets/Line.png";
  String Google = "assets/Google.png";
  String Facebook = "assets/Facebook.png";
  String Apple = "assets/Apple.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF101623),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 327,
                  height: 188,
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 241, 245),
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            color: Color(0xFFA1A8B0),
                          ),
                          hintStyle: TextStyle(color: Color(0xFFA1A8B0)),
                          hintText: "Enter your email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xFF199A8E),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(255, 240, 241, 245),
                          prefixIcon: Icon(
                            Icons.lock_outlined,
                            color: Color(0xFFA1A8B0),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xFFA1A8B0),
                          ),
                          hintStyle: TextStyle(color: Color(0xFFA1A8B0)),
                          hintText: "Enter your password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xFF199A8E),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Text(
                              "Forgot Password?",
                              textAlign: TextAlign.end,
                              style: GoogleFonts.inter(
                                color: Color(0xFF199A8E),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 56,
                width: 327,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF199A8E),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        String username = emailController.text;
                        String password = passwordController.text;
                        User? user = AuthManager.login(username, password);
                        if (user != null) {
                          // Login successful, navigate to home screen

                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home(user: user)),
                            (route) => false,
                          );
                        } else {
                          // Show error message
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Invalid username or password'),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        color: Color(0xFF717784),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Color(0xFF199A8E),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUp())));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 255,
                width: 327,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          Line,
                          width: 130,
                        ),
                        Text(
                          "OR",
                          style: GoogleFonts.inter(
                            color: Color(0xFFA1A8B0),
                            fontSize: 16,
                          ),
                        ),
                        Image.asset(
                          Line,
                          width: 130,
                        ),
                      ],
                    ),
                    Container(
                      height: 56,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                        ),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Google,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Sign in with Google",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                        ),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Apple,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Sign in with Apple",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 56,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Color(0xFFE5E7EB),
                        ),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Facebook,
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  "Sign in with Facebook",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
