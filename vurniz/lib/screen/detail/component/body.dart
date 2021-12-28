import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/models/mproduct.dart';
import 'package:vurniz/screen/checkout/checkout.dart';
import 'package:vurniz/services/responsive/responsive.dart';

import 'headdetail.dart';

class BuildBody extends StatefulWidget {
  final Product product;
  const BuildBody({Key? key, required this.product}) : super(key: key);

  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive(
        mobilesd: buildMainBody(size, 200, 250, 0.15),
        mobile: buildMainBody(size, 200, 250, 0.14),
        tablet: buildMainBody(size, 400, 350, 0.17),
        destop: buildMainBody(size, 400, 350, 0.14));
  }

  SingleChildScrollView buildMainBody(
      Size size, double width, double height, double multiplepads) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(children: [
              BodyDetail(
                size: size,
                widget: widget,
                multiplepad: multiplepads,
              ),
              HeaderDetail(
                widget: widget,
                size: size,
                widthimg: width,
                heightimg: height,
              )
            ]),
          )
        ],
      ),
    );
  }
}

class BodyDetail extends StatefulWidget {
  const BodyDetail(
      {Key? key,
      required this.size,
      required this.widget,
      required this.multiplepad})
      : super(key: key);

  final Size size;
  final BuildBody widget;
  final double multiplepad;

  @override
  State<BodyDetail> createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: widget.size.height * widget.multiplepad, left: 20),
      margin: EdgeInsets.only(top: widget.size.height * 0.3),
      //height: 500,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rating',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade900,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.widget.product.rating.toString(),
                        style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 52,
                height: 42,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade400),
                child: Stack(children: [
                  Center(
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            pressed == false ? pressed = true : pressed = false;
                          });
                        },
                        icon: pressed == false
                            ? const Icon(Icons.favorite_border,
                                color: Colors.white, size: 25)
                            : const Icon(Icons.favorite,
                                color: Colors.pink, size: 25)),
                  ),
                ]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            width: widget.size.width - 20,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since. When an unknown printer took a galley.',
              style: GoogleFonts.sourceSansPro(fontSize: 16),
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.12,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(Icons.shopping_cart_outlined),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.grey.shade500),
                      elevation: MaterialStateProperty.all<double>(2)),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(product: widget.widget.product))),
                        child: Text(
                          'BUY NOW',
                          style: GoogleFonts.sourceSansPro(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade500),
                            elevation: MaterialStateProperty.all<double>(2))))
              ],
            ),
          )
        ],
      ),
    );
  }

}

