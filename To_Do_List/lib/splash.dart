import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:to_do_list/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatetologin();
  }

  navigatetologin() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
      () {},
    );
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('animations/todo.json', height: 300, width: 300),
          Text(
            "CheckIt Off",
            style: TextStyle(color: Colors.black, fontSize: 30),
          )
        ],
      ),
    );
  }
}
