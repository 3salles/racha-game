// ignore: file_names
import 'package:flutter/material.dart';
import '../../core/widgets/action_button_widget.dart';

class EnterWithCode extends StatelessWidget {
  const EnterWithCode({Key? key}) : super(key: key);

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
                    "Digite o código da sala",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Ex.: #pizza3rf5',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                      ),
                      autocorrect: false,
                      enableSuggestions: false,
                      keyboardType: TextInputType.visiblePassword),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "Continuar",
                    backgroundColor: const Color(0xFFE7A117),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/room");
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
