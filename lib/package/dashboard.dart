import 'package:flutter/material.dart';

class DasboardPage extends StatefulWidget {
  const DasboardPage({super.key});

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'assets/bgtulisan.jpg',
            fit: BoxFit.cover,
          )),
          Positioned(
              child: Opacity(
            opacity: 0.5,
            child: Container(
              color: const Color.fromARGB(255, 197, 0, 0),
            ),
          )),
          Positioned(
              top: 15,
              bottom: 670,
              right: 15,
              left: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/icon4.png'),
                  Text(
                    'Ingoude Ramen',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        image: DecorationImage(
                            image: AssetImage('assets/ftprofil.jpg'))),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
