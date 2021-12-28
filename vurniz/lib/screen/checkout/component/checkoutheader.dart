import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutHeader extends StatelessWidget {
  const CheckOutHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade400),
          child: Stack(children: [
            Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 15)),
            ),
          ]),
        ),
        const Spacer(
          flex: 3,
        ),
        Container(
          child: Text(
            'My Order',
            style: GoogleFonts.sourceSansPro(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700
            ),
            
          ),
        ),
        const Spacer(
          flex: 4,
        )
      ],
    );
  }
}
