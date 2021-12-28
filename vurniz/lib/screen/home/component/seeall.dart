import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/models/mproduct.dart';
import 'package:vurniz/screen/detail/detail.dart';
import 'package:vurniz/services/responsive/responsive.dart';

class SeeAll extends StatelessWidget {
  final String namepage;
  const SeeAll({Key? key, required this.namepage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: buildAppBar(context),
        body: Responsive(
            mobilesd: buildBody(size, 2, 7 / 10),
            mobile: buildBody(size, 2, 8 / 10),
            tablet: buildBody(size, 3, 9 / 10),
            destop: buildBody(size, 5, 9 / 10)
        ));
  }

  SafeArea buildBody(Size size, int count, double rasio) {
    return SafeArea(
            child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: count,
                      childAspectRatio: rasio,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16),
                  itemBuilder: (context, index) => GridSeeAll(
                    product: namepage == 'Popular'
                        ? popular[index]
                        : allitem[index],
                  ),
                  itemCount:
                      namepage == 'Popular' ? popular.length : allitem.length,
                )),
          );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade300,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => Navigator.pop(context),
        color: Colors.black,
      ),
      title: Text(
        namepage,
        style: GoogleFonts.sourceSansPro(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_rounded),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
          color: Colors.black,
        )
      ],
    );
  }
}

class GridSeeAll extends StatelessWidget {
  final Product product;
  const GridSeeAll({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                    product: product,
                  ))),
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        //color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              child: Image.asset(product.img,
                  //scale: 2,
                  fit: BoxFit.contain),
            ),
            Container(
              width: 130,
              padding: const EdgeInsets.only(
                  left: 5.0, top: 10.0, right: 5.0, bottom: 5.0),
              child: Text(product.name,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.grey.shade700, fontSize: 16)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}

/*
SafeArea(
        child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                color: Colors.grey.shade200),
            child: GridView.builder( 
                padding: const EdgeInsets.only(top: 16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: size.width > 600 ? size.width > 750 ? 4 : 3 : 2,
                    childAspectRatio: size.width < 430 ? 7 / 10 : size.width > 600 ? 8 / 10 : 9 / 10,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16 
                    ),
                itemBuilder: (context, index) => GridSeeAll(product: namepage == 'Popular' ? popular[index] : allitem[index],),
                itemCount: namepage == 'Popular' ? popular.length : allitem.length,
                )
            ),
      ),
    );

*/