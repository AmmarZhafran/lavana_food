import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 197, 0, 0),
            // color: Theme.of(context).colorScheme.background,
          ),
          Positioned(
            child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 231, 231),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        30), // Ujung sudut lingkaran di kiri bawah
                    bottomRight: Radius.circular(
                        30), // Ujung sudut lingkaran di kanan bawah
                  ),
                )),
          ),
          Positioned(
              top: 5,
              right: 90,
              bottom: 280,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/larana.jpeg')),
                ),
              )),
          Positioned(
              top: 400,
              right: 25,
              left: 25,
              bottom: 30,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 139, 139, 139)
                          .withOpacity(0.5), // Warna bayangan
                      spreadRadius: 5, // Radius penyebaran bayangan
                      blurRadius: 7, // Radius blur bayangan
                      offset: Offset(0, 3), // Posisi bayangan (X, Y)
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 450,
              right: 50,
              left: 50,
              bottom: 240,
              child: Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 212, 212),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person, // Icon profil
                      color: Colors.white, // Warna icon
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 520,
              right: 50,
              left: 50,
              bottom: 170,
              child: Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 212, 212),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock, // Icon profil
                      color: Colors.white, // Warna icon
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 590,
              right: 50,
              left: 50,
              bottom: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Warna latar belakang merah
                    onPrimary: Colors.white, // Warna teks putih
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ))),
          Positioned(
              top: 650,
              right: 50,
              left: 60,
              bottom: 30,
              child: Row(
                children: [
                  Text('Dont have an account?'),
                  Text(
                    ' Create an account',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
