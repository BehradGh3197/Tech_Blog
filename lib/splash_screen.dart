import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec/gen/assets.gen.dart';
import 'package:tec/main_screen.dart';
import 'package:tec/my_colors.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  void initState(){

    Future.delayed(Duration(seconds: 3)).then((value) {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
  
        builder: (context) => MainScreen()));

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.logo.image(height: 64),
              SizedBox(height: 32),
              SpinKitFadingCube(color: solidColors.primaryColor, size: 32),
            ],
          ),
        ),
      ),
    );
  }
}
