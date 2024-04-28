import 'package:flutter/material.dart';
import '../components/Row_in_NumbersScreen.dart';
import '../models/number.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  static const List<Var_Data_All_App> List_items_Nambers = [
    Var_Data_All_App(
      Sound: 'number_one_sound.mp3',
      enName: 'one',
      image: 'assets/images/numbers/number_one.png',
      jaName: 'ichi',
    ),
    Var_Data_All_App(
      Sound: 'number_two_sound.mp3',
      enName: 'two',
      image: 'assets/images/numbers/number_two.png',
      jaName: 'Ni',
    ),
    Var_Data_All_App(
      Sound: 'number_three_sound.mp3',
      enName: 'three',
      image: 'assets/images/numbers/number_three.png',
      jaName: 'San',
    ),
    Var_Data_All_App(
      enName: 'four',
      image: 'assets/images/numbers/number_four.png',
      jaName: 'Shi',
      Sound: 'number_four_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'Five',
      image: 'assets/images/numbers/number_five.png',
      jaName: 'Go',
      Sound: 'number_five_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'Six',
      image: 'assets/images/numbers/number_six.png',
      jaName: 'Poku',
      Sound: 'number_six_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'Seven',
      image: 'assets/images/numbers/number_seven.png',
      jaName: 'Sebun',
      Sound: 'number_seven_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      jaName: 'ichi',
      Sound: 'number_eight_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'nien',
      image: 'assets/images/numbers/number_nine.png',
      jaName: 'Ni',
      Sound: 'number_nine_sound.mp3',
    ),
    Var_Data_All_App(
      enName: 'nien',
      image: 'assets/images/numbers/number_nine.png',
      jaName: 'Ni',
      Sound: 'number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: const Color.fromARGB(255, 65, 42, 33),
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: List_items_Nambers.length,
          itemBuilder: (context, index) {
            return Row_Number_screen(
              DataPlayedTaybe: 'numbers',
              color: Colors.amber,
              number_of_Every_row: List_items_Nambers[index],
            );
          },
        ),
      ),
    );
  }
}
