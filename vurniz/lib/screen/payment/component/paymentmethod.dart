import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/screen/home/home.dart';

class ListMethods extends StatelessWidget {
  final String methods;
  const ListMethods({Key? key, required this.methods}) : super(key: key);

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
            methods,
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => const CustomDialog());
            },
            splashColor: Colors.red,
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            padding:
                const EdgeInsets.only(top: 32, bottom: 12, left: 16, right: 16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Success',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Thank you for purchasing our product, hope you like it ^^',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {
                      
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Homepage()));
                    },
                    child: Text(
                      'Okay',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ))
              ],
            ),
          ),
          const Positioned(
              top: -28,
              child: CircleAvatar(
                minRadius: 16,
                maxRadius: 28,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.check,
                  size: 28,
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}