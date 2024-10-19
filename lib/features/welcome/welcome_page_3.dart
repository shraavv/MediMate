import 'package:flutter/material.dart';
import 'package:medi_mate/features/home/home_page_view.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _WelcomePageThree();
}

class _WelcomePageThree extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    void navigateToHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffedeec9),
          body: Stack(children: [
        Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/Nurse.png',
              width: double.infinity,
            ),
          ],
        )),
        Positioned(
            child: Container(
          height: 490,
          margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 35.0),
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(50.0),
          child: const Text("Voice Commands",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34.0,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center),
        )),
        //
        Positioned(
            child: Container(
          height: 590,
          margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 35.0),
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(50.0),
          child: const Text(
              "Navigate using Voice Commands.",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 26.0,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center),
        )),
        Positioned(
              bottom: 80,
              right: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff77bfa3),
                  shadowColor: Colors.black,
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                onPressed: () => navigateToHomePage(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
