import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Promo extends StatelessWidget {
  const Promo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Offers',
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'add code',
              style: GoogleFonts.sourceSansPro(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500),
            ),
          )
        ],
      ),
    );
  }
}