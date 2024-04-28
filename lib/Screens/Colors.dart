import 'package:flutter/material.dart';
import '../components/Row_in_NumbersScreen.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

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
          itemCount: ListitemsNambers.length,
          itemBuilder: (context, index) {
            return Row_Number_screen(
              DataPlayedTaybe: 'colors',
              color: const Color.fromARGB(255, 133, 4, 173),
              number_of_Every_row: ListitemsNambers[index],
            );
          },
        ),
      ),
    );
  }
}

List<Var_Data_All_App> ListitemsNambers = const [
  Var_Data_All_App(
    Sound: 'black.wav',
    image: 'assets/images/colors/color_black.png',
    enName: 'Black',
    jaName: 'Nhema',
  ),
  Var_Data_All_App(
    Sound: 'White.wav',
    image: 'assets/images/colors/color_white.png',
    enName: 'White',
    jaName: 'Chena',
  ),
  Var_Data_All_App(
    Sound: 'red.wav',
    image: 'assets/images/colors/color_red.png',
    enName: 'Red',
    jaName: 'Tsvuku',
  ),
  Var_Data_All_App(
    Sound: 'gray.wav',
    image: 'assets/images/colors/color_gray.png',
    enName: 'Gray',
    jaName: 'Gireyi',
  ),
  Var_Data_All_App(
    enName: 'Dusty-Yellow',
    image: 'assets/images/colors/color_dusty_yellow.png',
    jaName: 'Hupfu-Yero',
    Sound: 'dusty_yellow.wav',
  ),
  Var_Data_All_App(
    enName: 'Yellow',
    image: 'assets/images/colors/yellow.png',
    jaName: 'Yero',
    Sound: 'yellow.wav',
  ),
  Var_Data_All_App(
    enName: 'Green',
    image: 'assets/images/colors/color_green.png',
    jaName: 'Girinhi',
    Sound: 'green.wav',
  ),
  Var_Data_All_App(
    enName: 'Brown',
    image: 'assets/images/colors/color_brown.png',
    jaName: 'Bhurawuni',
    Sound: 'brown.wav',
  ),
];
