import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // welecome text
          Text(
            'Best Furniture For Your House',
            style: GoogleFonts.sourceSansPro(
                fontSize: 40, fontWeight: FontWeight.w800, wordSpacing: 2),
          ),
          const SizedBox(
            height: 40,
          ),
          // search and menu
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // search
              Expanded(
                  child: Form(
                      child: TextFormField(
                decoration: InputDecoration(
                  hintText: '   Search furniture',
                  hintStyle: const TextStyle(fontSize: 18, color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.search_rounded),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 2)),
                ),
              ))),
              const SizedBox(
                width: 20,
              ),
              // menu button
              Container(
                width: 50,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}

