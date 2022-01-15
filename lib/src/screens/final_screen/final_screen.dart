// ignore: file_names
import 'package:flutter/material.dart';
import '../../core/widgets/action_button_widget.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Rafael está isento de pagar!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Valor a ser pago por pessoa:",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "75,00",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Finalizar",
                    backgroundColor: const Color(0xFFE7A117),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/");
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
