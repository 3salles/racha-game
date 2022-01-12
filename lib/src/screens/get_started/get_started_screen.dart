import 'package:flutter/material.dart';
import '../../core/widgets/action_button_widget.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF2F3847),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png"),
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Jogue para dividir a conta",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Iniciar",
                    backgroundColor: const Color(0xFFE7A117),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/room");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
