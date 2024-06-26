import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_trackbites/homepages/home_page.dart';
import 'package:flutter_trackbites/homepages/navhome_page.dart';
import 'package:flutter_trackbites/intropages/onbording_page.dart';
import 'package:flutter_trackbites/intropages/personal_information_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData){
            return const NavHomePage();
          } else {
            return const OnbordingPages();
          }
        },
      ),
    );
  }
}
