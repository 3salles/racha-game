import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:racha_game/src/screens/get_started/get_started_screen.dart';

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
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000),
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
              fontFamily: "SFPro",
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: Color(0xFF919191)),
          // cor da linha da caixa de texto
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF000000))),
          // cor da linha da caixa de texto quando estiver selecionada
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFA4A0C))),
        ),
      ),
    );
  }
}
