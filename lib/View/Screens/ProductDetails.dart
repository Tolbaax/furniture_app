import 'package:flutter/material.dart';
import 'package:furniture_app/Model/ProductModel.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int Q =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back,
                        color: Color(0xff44655E), size: 30,)),
                  const Spacer(),
                  const Text('Sofa',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 125, right: 20),
                    child: Icon(
                      Icons.shopping_bag, size: 30,
                      color: Color(0xff44655E),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              height: 235, width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('images/00.jpg'),
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              child: Row(
                children: const [
                  Text('Blue Sofa',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text('\$65',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Text(
                'Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description,Description.',
                style: TextStyle(fontSize: 21, color: Colors.grey,),),
            ),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  const Text('Color',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: colors.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                height: 27, width: 27,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade900,
                                        spreadRadius: -5,
                                        blurRadius: 15,
                                        offset: const Offset(0, 5)),
                                  ],
                                  color: colors[index],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Row(
                children: [
                  const Text('Quantity', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 40, width: 125,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: const Color(0xffD2E2E9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Q = ++Q;
                            });
                          },
                          child: Container(
                            height: 30, width: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xff44655E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.add, color: Colors.white,),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(right: 8, left: 8),
                          child: Text(Q.toString(), style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            if(Q > 1){
                              setState(() {
                                Q = --Q;
                              });
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xff44655E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.remove, color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35,),
            Container(
              height: 53,width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color(0xffD2E2E9),
              ),
              child: const Center(child: Text('Add to cart',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),)),
            ),
            const SizedBox(height: 15,),
            Container(
              height: 53,width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color(0xff44655E),
              ),
              child: const Center(child: Text('Buy Now',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
