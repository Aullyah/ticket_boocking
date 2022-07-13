import 'package:flutter/material.dart';
import 'package:ticket_booking_app/view/ui/home_page.dart';
import 'package:ticket_booking_app/view/ui/main_page.dart';
import 'package:ticket_booking_app/view/ui/profil_page.dart';
import 'package:ticket_booking_app/view/ui/reservation_page.dart';
import 'package:ticket_booking_app/view/ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/main': (context) => MainPage(),
        '/home': (context) => const HomePage(),
        '/reservation': (context) => ReservationPage(),
        '/profil': (context) => const ProfilPage(),
      },
    );
  }
}
