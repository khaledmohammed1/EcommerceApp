import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/splash";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SplashScreen());
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () => Navigator.pushNamed(context, "/control"));
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        // Container(
        //   color: Colors.black,
        //   padding: const EdgeInsets.symmetric(
        //     vertical: 8,
        //     horizontal: 8,
        //   ),
        //   child: Text("App Name",style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),),),
         Center(
          child: Image(
            image: const AssetImage("assets/images/4732442.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/3,
          ),
        ),

      ],
    ));
  }
}
