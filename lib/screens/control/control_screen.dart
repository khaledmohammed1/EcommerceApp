import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  static const String routeName = "/control";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const ControlScreen());
  }

  const ControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/sellerHome");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text("Sign as Seller"),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text("Sign as Buyer"),
          ),
        ),
      ],
    ));
  }
}
