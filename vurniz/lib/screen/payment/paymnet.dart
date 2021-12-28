import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'component/paymentmethod.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              color: Colors.grey.shade100,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: ListView(
                  children: [
                    const PaymentHeader(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ListMethods(
                      methods: 'Google Pay',
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ListMethods(
                      methods: 'Pay Pal',
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ListMethods(
                      methods: 'Debit Card',
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const ListMethods(
                      methods: 'Credit Card',
                    ),
                  ],
                ),
              ))),
    );
  }
}

class PaymentHeader extends StatelessWidget {
  const PaymentHeader({
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
            'Payment Methods',
            style: GoogleFonts.sourceSansPro(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700),
          ),
        ),
        const Spacer(
          flex: 4,
        )
      ],
    );
  }
}

