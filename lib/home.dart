import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:offline_games/2048/game.dart';
import 'package:offline_games/tic_tac_toe/game.dart';
import 'package:offline_games/tic_tac_toe/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TicTacToe(),
                  ),
                );
              },
              child: Neon(
                color: Colors.blue,
                font: NeonFont.Membra,
                text: "Tic Tac Toe",
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TwoThousandFortyEight(),
                ),
              );
            },
            child: Neon(
              color: Colors.blue,
              font: NeonFont.Membra,
              text: "2048",
            ),
          ),
        ],
      ),
    );
  }
}
