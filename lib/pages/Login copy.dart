import 'package:flutter/material.dart';

class logincopy extends StatelessWidget {
  logincopy({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void HomePage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1565C0),
              Color(0xFF2196F3),
              Color(0xFFBBDEFB),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Icon(
                Icons.person_2_rounded,
                size: 100,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Selamat Datang Kembali!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              MyFieldText(
                controller: usernameController,
                hinText: 'Email',
                prefIcon: Icon(Icons.mail, color: Colors.black),
                obsecureText: false,
              ),
              SizedBox(height: 10),
              MyFieldText(
                controller: passwordController,
                hinText: 'Password',
                prefIcon: Icon(Icons.lock, color: Colors.black),
                obsecureText: true,
              ),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: HomePage,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class MyFieldText extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obsecureText;
  final Icon prefIcon;

  const MyFieldText({
    super.key,
    required this.controller,
    required this.hinText,
    required this.obsecureText,
    required this.prefIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hinText,
          prefixIcon: prefIcon,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
