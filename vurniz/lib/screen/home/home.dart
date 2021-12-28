import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/screen/home/component/allitem.dart';
import 'package:vurniz/screen/home/component/popular.dart';
import 'package:vurniz/screen/home/component/seeall.dart';

import 'component/header.dart';
import 'component/product.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selected = 0;

  void onItemTapped(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    List<CategoryIcon> item = [
      CategoryIcon(imgpath: 'assets/images/chair.png', text: 'Chair'),
      CategoryIcon(imgpath: 'assets/images/lemari.png', text: 'Cuboard'),
      CategoryIcon(imgpath: 'assets/images/bed.png', text: 'Bed'),
      CategoryIcon(imgpath: 'assets/images/lamp.png', text: 'Lamp'),
    ];

    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 20, left: 16),
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.grey.shade300, Colors.white])),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Header(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                  child: Container(
                height: 40,
                child: ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 135,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade800),
                          ),
                          onPressed: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(top: 5, bottom: 5),
                                height: 40,
                                width: 40,
                                child: Image(
                                  image: AssetImage(item[index].imgpath),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                item[index].text,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, _) => const SizedBox(width: 10),
                    itemCount: item.length),
              )),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: ProductBody(selecteditem: selected),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 15,
                ),
              ),
              SliverToBoxAdapter(
                  child: Segment(
                text: 'Popular',
                size: _size.width,
              )),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              const SliverToBoxAdapter(child: Popular()),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              SliverToBoxAdapter(
                child: Segment(
                  text: 'All Product',
                  size: _size.width,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              const SliverToBoxAdapter(
                child: AllItem(),
              ),
            ],
          ),
          /*child: ListView.separated(
                itemBuilder: (context, index) => widget[index], 
                separatorBuilder: (context, _) => const SizedBox(height: 20), 
                itemCount: widget.length)),*/
        ),
      ),
    ));
  }
}

class Segment extends StatelessWidget {
  String text;
  double size;
  Segment({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black)),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeeAll(
                              namepage: text,
                            )));
              },
              child: Text('See all',
                  style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey)))
        ],
      ),
    );
  }
}

class CategoryIcon {
  final String imgpath;
  final String text;

  CategoryIcon({required this.imgpath, required this.text});
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.item,
  }) : super(key: key);

  final List<CategoryIcon> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
          shrinkWrap: true,
          primary: false,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              scrollItem(item: item[index], index: index),
          separatorBuilder: (context, _) => const SizedBox(width: 10),
          itemCount: item.length),
    );
  }
}

Widget scrollItem({required CategoryIcon item, required int index}) {
  return Container(
    width: 135,
    child: ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade800),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            height: 40,
            width: 40,
            child: Image(
              image: AssetImage(item.imgpath),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            item.text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          )
        ],
      ),
    ),
  );
}
