// ignore: file_names
import 'package:flutter/material.dart';
import '../../core/widgets/action_button_widget.dart';

class GameLobby extends StatelessWidget {
  const GameLobby({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 50),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Sala: Pizza",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 50),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Objetivo: 1500",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Código: #pizza3rf5",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Participantes",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "- Rafael",
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
                    "- Beatriz",
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
                    "- Riordan",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                    "JOGAR",
                    backgroundColor: const Color(0xFFE7A117),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/ranking-room");
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
