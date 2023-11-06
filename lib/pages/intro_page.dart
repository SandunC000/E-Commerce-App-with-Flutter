import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 240,
                ),
              ),
              //text
              const Text("Just do it!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              //subtitle
              const SizedBox(height: 28),
              const Text("Branded Shoes right at your fingertips..",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 50),

              //button
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'homepage'),
                child: Center(
                  child: Container(
                    width: 280,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                        child: Text(
                      "Shop now",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
