import 'package:apptwolung/Screens/Numbers_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';

class Row_Number_screen extends StatelessWidget {
  const Row_Number_screen({
    required this.number_of_Every_row,
    required this.DataPlayedTaybe,
    required this.color,
  });
  final Var_Data_All_App number_of_Every_row;
  final Color color;
  final String DataPlayedTaybe;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100.0,
      child: Row(
        children: [
          Container(
            // ! == not null
            child: Image.asset(number_of_Every_row.image!),
            color: Color.fromARGB(255, 247, 235, 192),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  number_of_Every_row.jaName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  number_of_Every_row.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(
                prefix: 'assets/sounds/$DataPlayedTaybe/',
              );
              player.play(
                number_of_Every_row.Sound,
              );
            },
            icon: Icon(
              Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }
}
