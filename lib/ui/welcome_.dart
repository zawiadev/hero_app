import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/welcome_.jpeg",
                  fit: BoxFit.cover,
                  opacity: const AlwaysStoppedAnimation(.5),
                )),

            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 270,
                  padding: const EdgeInsets.all(12.0),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Welcome to 👋", style: Theme.of(context).textTheme.headlineMedium,),
                      const SizedBox(height: 20,),
                      Text("MyApp", style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w800
                      ),),
                      const SizedBox(height: 20,),
                      Text("The best e-commerce app in the century for your daily needs!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 20,),
                      FilledButton(onPressed: (){}, child: Text("Start Now"))
                    ],),
                ))
          ],
        ),
      ),
    );
  }
}
