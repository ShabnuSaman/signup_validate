import 'package:flutter/material.dart';
import 'package:ui_exam/screens/signup.dart';
import 'package:ui_exam/widgets/button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1709071784840-cf3ecc434749?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Find New Matches\nwith Friendy!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "With Friendy you will have a range\nof opportunities to make new friends \nand relationship beside our top \nFeatures",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                ontap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                buttonText: "Get Strated",
              )
            ],
          ),
        ),
      ),
    );
  }
}
