import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/auth.dart';
import 'package:Medics/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign Up",
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
                    height: 300,
                    child: Column(
                      children: [
                        TextField(
                          controller: fullNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: "Full Name",
                            labelStyle: TextStyle(
                              fontSize: 20,
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(255, 240, 241, 245),
                            prefixIcon: Icon(
                              Icons.person_2_outlined,
                              color: Color(0xFFA1A8B0),
                            ),
                            hintStyle: TextStyle(color: Color(0xFFA1A8B0)),
                            hintText: "Enter your full name",
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
                          children: [
                            Checkbox(
                              tristate: false,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                            ),
                            Text(
                              "I agree to the Medidoc ",
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Color(0xFF3B4453),
                              ),
                            ),
                            Text(
                              "Terms of Service ",
                              style: GoogleFonts.inter(
                                fontSize: 13,
                                color: Color(0xFF199A8E),
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
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          String email = emailController.text;
                          String password = passwordController.text;
                          String fullName = fullNameController.text;
                          AuthManager.signUp(email, password, fullName);
                          Navigator.pop(context); // Go back to login page
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
                        "Already have an account ",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Color(0xFF717784),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Color(0xFF199A8E),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Login())));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
