import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:racha_game/src/screens/bill_value/bill_value.dart';
import 'package:racha_game/src/screens/create_name_room/create_name_room.dart';
import 'package:racha_game/src/screens/create_room/create_room.dart';
import 'package:racha_game/src/screens/enter_with_code/enter_with_code.dart';
import 'package:racha_game/src/screens/final_screen/final_screen.dart';
import 'package:racha_game/src/screens/game_lobby/game_lobby.dart';
import 'package:racha_game/src/screens/get_started/get_started_screen.dart';
import 'package:racha_game/src/screens/person_name/person_name.dart';
import 'package:racha_game/src/screens/ranking_room/ranking_room.dart';

class RachaGameApp extends StatelessWidget {
  const RachaGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Racha Game",
      // removido o banner de debug da aplicação
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const GetStartedScreen(),
        "/create-room": (context) => const CreateRoom(),
        "/create-name-room": (context) => const CreateNameRoom(),
        "/enter-with-code": (context) => const EnterWithCode(),
        "/bill-value": (context) => const BillValue(),
        "/person-name": (context) => const PersonName(),
        "/game-lobby": (context) => const GameLobby(),
        "/ranking-room": (context) => const RankingRoom(),
        "/final-screen": (context) => const FinalScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF2F3847),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "RopaSans",
            fontSize: 62,
            height: 0.8,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFFFFFF),
          ),
          button: TextStyle(
            fontFamily: "RopaSans",
            fontSize: 40,
            fontWeight: FontWeight.w400,
            color: Color(0xFFF6F6F9),
          ),
          // formatação do texto do input
          subtitle1: TextStyle(
            fontFamily: "RopaSans",
            fontSize: 26,
            fontWeight: FontWeight.w400,
            color: Color(0xFFF6F6F9),
            decoration: TextDecoration.none,
          ),
          subtitle2: TextStyle(
            fontFamily: "RopaSans",
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: Color(0xFFF6F6F9),
            decoration: TextDecoration.none,
          ),
        ),

        // cor do cursor da caixa de texto - iOS
        cupertinoOverrideTheme:
            const CupertinoThemeData(primaryColor: Color(0xFFE7A117)),
        // cor do cursor da caixa de texto - Android, Fuchsia, etc.
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE7A117),
          selectionColor: Color(0xFFE7A117),
          selectionHandleColor: Color(0xFFE7A117),
        ),

        // remover o padding do TextButton
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
        ),

        // incluído o tema dos labels das caixas de texto da aplicação
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
              fontFamily: "RopaSans",
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 136, 130, 122)),
          // cor da linha da caixa de texto
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7A117))),
          // cor da linha da caixa de texto quando estiver selecionada
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE7A117))),
        ),
      ),
    );
  }
}
