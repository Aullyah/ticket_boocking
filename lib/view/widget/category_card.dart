import 'package:flutter/material.dart';

import 'package:ticket_booking_app/common/themes.dart';

class CategoryCard extends StatelessWidget {
  int index;
  CategoryCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      decoration: BoxDecoration(
        color: index == 2 ? accentColor1 : Colors.white,
        border:
            Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 0.15)),
        // boxShadow: [
        //   BoxShadow(
        //       color: Color.fromRGBO(0, 0, 0, 0.15),
        //       spreadRadius: 1,
        //       blurRadius: 1,
        //       offset: Offset(0, 3)),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Icon(
        Icons.train_outlined,
        size: 40,
        color: index == 2 ? Colors.white : accentColor3,
      ),
    );
  }
}
