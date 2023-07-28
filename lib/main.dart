import 'dart:async';
import 'package:counsellor_vendor/Login_page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    setState(() {
      Timer(Duration(seconds: 5),()async{
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=>Login_page()));
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/councellor.jpeg"),
                  )
                ),
              ),
            ),
            SizedBox(height: 80,),
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(text: "Let's Discuss", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff0096bb))),
                  TextSpan(text: "  , Your Feelings", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffaa2516)),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(text: "With --", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff0096bb))),
                  TextSpan(text: "  My CounSellor", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xffaa2516)),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

