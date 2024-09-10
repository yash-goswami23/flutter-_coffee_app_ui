import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coffee Shop",
                style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              Column(children: [
                Text(
                  "Felling Low? Take a Sip of Coffee",
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50),
                Material(
                  color: const Color(0xffe57734),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    splashColor: const Color(0xff212325),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 50),
                      child: Text(
                        "Get Start",
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                )
              ])
            ]),
      ),
    );
  }
}
