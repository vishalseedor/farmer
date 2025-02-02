
import 'dart:async';

import 'package:farmers/Loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

    _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {
      // getstorage.read(phone);
      // getstorage.read(password);

      // Timer(Duration(seconds: 0),(){
      //  phone =getstorage.read("phone").toString();
      //  password=getstorage.read("password").toString();
      // });
      // Timer(Duration(seconds: 2),(){
      //   (phone!=null)?
      //     Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeScreen())):Navigator.push(context,MaterialPageRoute(builder: (context)=>SideBottomNavigation()));
        
      // });
    });
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
   // backgroundColor:purpleColor,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/P.jpg'),fit: BoxFit.cover)
        ),
        
      ),
    );
  }
}