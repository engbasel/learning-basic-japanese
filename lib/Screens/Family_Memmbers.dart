import 'package:flutter/material.dart';
import '../components/Row_in_NumbersScreen.dart';
import '../models/number.dart';

class Family_Memmbers extends StatelessWidget {
  const Family_Memmbers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemCount: List_items_Family_Members.length,
        itemBuilder: (context, index) {
          return Row_Number_screen(
            DataPlayedTaybe: 'Family Members',
            // you should replace 'numbers' to 'Family Members' to play this sounds
            color: Color(0xFF058B37),
            number_of_Every_row: List_items_Family_Members[index],
          );
        },
      ),
    );
  }
}

const List<Var_Data_All_App> List_items_Family_Members = const [
  Var_Data_All_App(
    Sound: 'father.wav',
    enName: 'Father',
    image: 'assets/images/family_members/family_father.png',
    jaName: 'Chichioya',
  ),
  Var_Data_All_App(
    Sound: 'mother.wav',
    enName: 'Mother',
    image: 'assets/images/family_members/family_mother.png',
    jaName: 'Musmue',
  ),
  Var_Data_All_App(
    Sound: 'grand father.wav',
    enName: 'Grand-Father',
    image: 'assets/images/family_members/family_grandfather.png',
    jaName: 'Ojisan',
  ),
  Var_Data_All_App(
    Sound: 'grand mother.wav',
    enName: 'Grand-Mother',
    image: 'assets/images/family_members/family_grandmother.png',
    jaName: 'hahyaot',
  ),
  Var_Data_All_App(
    Sound: 'older bother.wav',
    enName: 'Older-Brother',
    image: 'assets/images/family_members/family_older_brother.png',
    jaName: 'Sobo',
  ),
  Var_Data_All_App(
    Sound: 'older bother.wav',
    enName: 'Older-Sister',
    image: 'assets/images/family_members/family_older_sister.png',
    jaName: 'Nisan',
  ),
  Var_Data_All_App(
    Sound: 'younger brohter.wav',
    enName: 'Younger_Brother',
    image: 'assets/images/family_members/family_younger_brother.png',
    jaName: 'Ane',
  ),
  Var_Data_All_App(
    Sound: 'younger brohter.wav',
    enName: 'Younger_Sister',
    image: 'assets/images/family_members/family_younger_sister.png',
    jaName: 'Sope',
  ),
  Var_Data_All_App(
    Sound: 'younger sister.wav',
    enName: 'Son',
    image: 'assets/images/family_members/family_son.png',
    jaName: 'Ane',
  ),
  Var_Data_All_App(
    Sound: 'father.wav',
    enName: 'Daughter',
    image: 'assets/images/family_members/family_daughter.png',
    jaName: 'Musko',
  ),
];
