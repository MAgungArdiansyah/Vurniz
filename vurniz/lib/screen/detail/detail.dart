

import 'package:flutter/material.dart';
import 'package:vurniz/models/mproduct.dart';
import 'package:vurniz/screen/detail/component/body.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  const DetailPage({ Key? key, required this.product }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: buildAppbar(context),
      body: BuildBody(product: widget.product)
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () => Navigator.pop(context),
      color: Colors.white,
    ),
    backgroundColor: Colors.grey,
    elevation: 0,
    );
  }
}