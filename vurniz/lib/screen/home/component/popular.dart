import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/models/mproduct.dart';
import 'package:vurniz/screen/detail/detail.dart';

class Popular extends StatelessWidget {
  const Popular({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, _) => const SizedBox(
                width: 25,
              ),
          itemBuilder: (context, index) => PopularList(product: popular[index]),
          itemCount: popular.length),
    );
  }
}

class PopularList extends StatelessWidget {
  final Product product;

  const PopularList({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailPage(product: product,))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4.0,
                  offset: Offset(3.0, 5.5),
                ),
              ],
            ),
            child: Image.asset(
              product.img,
              //scale: 2,
              fit: BoxFit.contain
            ),
          ),
          Container(
            width: 130,
            padding: const EdgeInsets.only(
                left: 5.0, top: 10.0, right: 5.0, bottom: 5.0),
            child: Text(product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.sourceSansPro(
                    color: Colors.grey.shade700, fontSize: 16)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade900,
                  ),
                  Text(
                    product.rating.toString(),
                    style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '\$${product.price}',
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}