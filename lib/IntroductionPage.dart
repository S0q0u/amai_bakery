import 'package:bakery/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key});

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroductionComplete() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  void _onIntroductionSkip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.black, // Warna default indikator
          activeColor: Color.fromARGB(255, 248, 30,
              67), // Warna indikator aktif (yang menunjukkan halaman saat ini)
        ),
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(
            color: Color.fromARGB(255, 223, 128, 144),
          ),
        ),
        next: const Text(
          "Next",
          style: TextStyle(
            color: Color.fromARGB(255, 223, 128, 144),
          ),
        ),
        done: const Text(
          "Finish",
          style: TextStyle(
            color: Color.fromARGB(255, 223, 128, 144),
          ),
        ),
        onDone: _onIntroductionComplete,
        onSkip: _onIntroductionSkip,
        pages: [
          PageViewModel(
            title: "Welcome to our bakery-!",
            body: "Discover a world of delicious pastries and treats.",
            image: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/Amai.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title: "Explore Our Menu",
            body: "Browse our wide selection of bakery items.",
            image: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/Menu.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
          PageViewModel(
            title: "Place an Order",
            body: "Order your favorite items with ease.",
            image: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/cart.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
