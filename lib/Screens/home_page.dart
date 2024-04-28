import 'package:flutter/material.dart';
import '../components/Bars_HomeScreen.dart';
import 'Numbers_screen.dart';
import 'Family_Memmbers.dart';
import 'Colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ToKu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Stack(
        children: [
          // Background image with transparency
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), // Adjust the opacity as needed
              BlendMode.srcOver,
            ),
            child: Image.asset(
              'assets/images/colors/background.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Main_Bar_in_List(
                    When_tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const NumberScreen();
                          },
                        ),
                      );
                    },
                    Color_bar: Colors.amber.withOpacity(0.4),
                    Name_bar: 'Numbers',
                  ),
                ),
                Expanded(
                  child: Main_Bar_in_List(
                    When_tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Family_Memmbers();
                          },
                        ),
                      );
                    },
                    Color_bar: const Color.fromARGB(255, 174, 99, 78)
                      ..withOpacity(0.8),
                    Name_bar: 'FamilyMembers',
                  ),
                ),
                Expanded(
                  child: Main_Bar_in_List(
                    When_tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ColorsPage();
                          },
                        ),
                      );
                    },
                    Color_bar: Colors.black26..withOpacity(0.4),
                    Name_bar: 'Colors',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
