import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vurniz/models/mproduct.dart';
import 'package:vurniz/screen/payment/paymnet.dart';

import 'component/checkoutheader.dart';
import 'component/promo.dart';

class CheckOut extends StatefulWidget {
  final Product product;
  const CheckOut({Key? key, required this.product}) : super(key: key);
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  
  final _checkaddres = GlobalKey<FormState>();
  
  int count = 1;
  int price = 0;
  double delivery = 0;
  double total = 0;
  String addres = '';
  String result = '';
  String error = '';

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          color: Colors.grey.shade100,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CheckOutHeader(),
                SizedBox(
                  height: size.height * 0.05,
                ),
                item(),
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Promo(),
                SizedBox(
                  height: size.height * 0.03,
                ),
                orderSummary(size),
                SizedBox(
                  height: size.height * 0.03,
                ),
                buildFormAddress(),
                    SizedBox(
                  height: size.height * 0.02,
                ),
                Center(
                  child: Text(error, style: const TextStyle(color: Colors.red),),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_checkaddres.currentState!.validate()){
                          setState(() {
                            error = '';
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethods()));
                          });
                        } else {
                          setState(() {
                            error = 'Please enter your correct address';
                          });
                        }
                      },
                      child: Text(
                        'Pay Now',
                        style: GoogleFonts.sourceSansPro(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade500),
                          elevation: MaterialStateProperty.all<double>(2))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Form buildFormAddress() {
    return Form(
                key: _checkaddres,
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return '';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (val) {
                    setState(() {
                      addres = val;
                    });
                  },
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                              color: Colors.grey, width: 2.0)),
                      focusedErrorBorder:OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                              color: Colors.red, width: 2.0),
                      ),
                      errorBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                              color: Colors.red, width: 2.0)
                      ),
                      
                      hintText: ' Address',
                      hintStyle: GoogleFonts.sourceSansPro(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                ));
  }

  

  Container orderSummary(Size size) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Order Summary',
            style: GoogleFonts.sourceSansPro(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              Text(
                count == 1 ? '\$ ${widget.product.price}.0' : '\$ ${price}.0',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),
              ),
              Text(
                count == 1 ? '\$ ${(widget.product.price * 0.1).toStringAsFixed(2)}' : '\$ $result',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900),
              ),
              Text(
                count == 1
                    ? '\$ ${widget.product.price + widget.product.price * 0.1}'
                    : '\$ $total',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade900),
              )
            ],
          )
        ],
      ),
    );
  }

  Container item() {
    return Container(
      //width: size.width - 40,
      height: 105,

      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              offset: Offset(4.0, 10.0),
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 89,
            child: Image.asset(
              widget.product.img,
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  maxLines: 2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade700),
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${widget.product.price}',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count == 1 ? null : count--;
                              price = widget.product.price * count;
                              count == 1
                                  ? delivery = price * 0.1
                                  : delivery = (price * 0.1) + 2;
                              result = delivery.toStringAsFixed(2);
                              total = price + delivery;
                            });
                          },
                          child: Container(
                            width: 22,
                            height: 22,
                            child: const Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(width: 1.3, color: Colors.grey)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              count.toString(),
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              count == 10 ? null : count++;
                              price = widget.product.price * count;
                              count == 1
                                  ? delivery = price * 0.1
                                  : delivery = (price * 0.1) + 2;
                              result = delivery.toStringAsFixed(2);
                              total = price + delivery;
                            });
                          },
                          child: Container(
                            width: 22,
                            height: 22,
                            child: const Icon(Icons.add, size: 15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(width: 1.3, color: Colors.grey)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 15,
          )
        ],
      ),
    );
  }
}



class Item extends StatelessWidget {
  int count = 1;
  Item({
    Key? key,
    required this.count,
    required this.widget,
  }) : super(key: key);

  final CheckOut widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: size.width - 40,
      height: 105,

      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4.0,
              offset: Offset(4.0, 10.0),
            ),
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
            padding: const EdgeInsets.all(5),
            width: 100,
            height: 89,
            child: Image.asset(
              widget.product.img,
              fit: BoxFit.contain,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  maxLines: 2,
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade700),
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${widget.product.price}',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    ItemCounter(
                      count: count,
                    )
                  ],
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 15,
          )
        ],
      ),
    );
  }
}

class ItemCounter extends StatefulWidget {
  int count = 1;
  ItemCounter({Key? key, required this.count}) : super(key: key);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.count == 1 ? null : widget.count--;
            });
          },
          child: Container(
            width: 22,
            height: 22,
            child: const Icon(
              Icons.remove,
              size: 15,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1.3, color: Colors.grey)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              widget.count.toString(),
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20, fontWeight: FontWeight.w600),
            )),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.count == 10 ? null : widget.count++;
            });
          },
          child: Container(
            width: 22,
            height: 22,
            child: const Icon(Icons.add, size: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1.3, color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
