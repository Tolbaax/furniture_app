import 'package:flutter/material.dart';
import 'package:furniture_app/Model/ProductModel.dart';

import '../Screens/ProductDetails.dart';

class NewProductWidget extends StatelessWidget {
  const NewProductWidget({Key? key, this.product}) : super(key: key);
  final ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 35),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ProductDetails()));
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 152,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffD2E2E9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 10),
                    child: Text(
                      product!.pName!,
                      style: const TextStyle(
                          color: Color(0xff44655E),
                          fontWeight: FontWeight.w700,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          product!.pPrice!,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xff44655E),
                              fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0xff44655E),
                        ),
                        Text(
                          product!.pRate!,
                          style: const TextStyle(
                              color: Color(0xff44655E),
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 90,
                top: -10,
                child: Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: const Color(0xff44655E),
                  ),
                  child: const Center(
                      child: Text(
                    'New',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                )),
            Positioned(
                left: -15,
                bottom: -5,
                child: Image.asset(
                  product!.imageUrl!,
                  width: 175,
                )),
          ],
        ),
      ),
    );
  }
}
