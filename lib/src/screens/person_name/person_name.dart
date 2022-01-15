// ignore: file_names
import 'package:flutter/material.dart';
import '../../core/widgets/action_button_widget.dart';

class PersonName extends StatelessWidget {
  const PersonName({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nome da sala: Pizza",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Digite seu nome",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Ex.: Rafaelfo ',
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
                      Navigator.pushReplacementNamed(context, "/bill-value");
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
