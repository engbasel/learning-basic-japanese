import 'package:flutter/material.dart';

class Main_Bar_in_List extends StatelessWidget {
  Main_Bar_in_List({
    super.key,
    this.When_tap()?,
    this.Color_bar,
    this.Name_bar,
    // double? height_bar,
  });
  Color? Color_bar;
  String? Name_bar;
  Function()? When_tap;
  // double? height_bar;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: When_tap,
      child: Container(
        decoration: BoxDecoration(
          color: Color_bar,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 50.0,
        child: Text(
          Name_bar!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}











// ----------------------------------------------------------------

// My old code in make a rebeted item

//  Container(
//                 padding: EdgeInsets.all(10.0),
//                 alignment: Alignment.centerLeft,
//                 width: double.infinity,
//                 height: 65.0,
//                 color: Color.fromARGB(255, 38, 222, 93),
//                 child: Text(
//                   'Family Member',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               // Row three
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 alignment: Alignment.centerLeft,
//                 width: double.infinity,
//                 height: 65.0,
//                 color: Color.fromARGB(255, 215, 17, 212),
//                 child: Text(
//                   'Colors',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               // Row Four
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 alignment: Alignment.centerLeft,
//                 width: double.infinity,
//                 height: 65.0,
//                 color: Color.fromARGB(255, 2, 145, 188),
//                 child: Text(
//                   'phrees',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),