import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

class HeaderDetail extends StatelessWidget {
  final BuildBody widget;
  final Size size;
  final double widthimg;
  final double heightimg;

  const HeaderDetail(
      {Key? key,
      required this.widget,
      required this.size,
      required this.widthimg,
      required this.heightimg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vurniz Premium Product',
            style: GoogleFonts.sourceSansPro(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Text(
            widget.product.name,
            style: GoogleFonts.sourceSansPro(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Price\n',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 24,
                        color: Colors.white)),
                TextSpan(
                    text: '\$${widget.product.price}',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white))
              ])),
              Container(
                  width: widthimg,
                  height: heightimg,
                  child: Image.asset(
                    widget.product.img,
                    fit: BoxFit.contain,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
