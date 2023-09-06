import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final data = [
    CardPlanetData(
        title: "Tecnologico de celaya",
        subtitle: "Logo del tecnologico de celaya",
        image: const AssetImage("assets/images/itc.png"),
        backgroundColor: const Color.fromARGB(255, 12, 91, 32),
        titleColor: const Color.fromARGB(255, 22, 12, 202),
        subtitleColor: Colors.white,
        background: LottieBuilder.asset("assets/animation/an.json")),
    CardPlanetData(
        title: "ISC",
        subtitle: "Ingenieria en sistemas computacionales",
        image: const AssetImage("assets/images/ISC.png"),
        backgroundColor: Colors.white,
        titleColor: const Color.fromARGB(255, 12, 91, 32),
        subtitleColor: const Color.fromARGB(255, 22, 12, 202),
        background: LottieBuilder.asset("assets/animation/an.json")),
    CardPlanetData(
        title: "Instalaciones",
        subtitle: "Instalaciones del tecnologico de celaya",
        image: const AssetImage("assets/images/Ins.png"),
        backgroundColor: const Color.fromARGB(255, 22, 12, 202),
        titleColor: Colors.white,
        subtitleColor: const Color.fromARGB(255, 12, 91, 32),
        background: LottieBuilder.asset("assets/animation/an.json")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
