import 'package:flutter/material.dart';
import 'package:furniture_app/Model/ProductModel.dart';
import 'package:furniture_app/View/Widgets/NewProduct.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff44655E),
          leading: const Icon(
            Icons.menu, size: 27,),
          actions: [
            const Icon(
              Icons.search, size: 27,),
            Container(
              width: 45,
              margin:
                  const EdgeInsets.only(right: 15, top: 5, bottom: 5, left: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                    image: AssetImage('images/1.jpg'), fit: BoxFit.cover),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Color(0xff44655E),
                  ),
                  child: Container(
                      margin: const EdgeInsets.only(left: 20, top: 40),
                      child: const Text(
                        'Explore',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      )),
                ),
                Positioned(
                    top: 105, left: 35,
                    child: SizedBox(
                      height: 240,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          itemCount: exImage.length,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Container(
                                height: 250, width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey.shade300,
                                    image: DecorationImage(
                                        image: AssetImage(exImage[index]),
                                        fit: BoxFit.fill)),
                              ),
                            );
                          }),
                    )),
              ],
            ),
            Container(
                height: 55, width: 350,
                margin: const EdgeInsets.only(top: 110, right: 20, left: 50),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: type.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: index == selectedIndex
                                ? const Color(0xff44655E)
                                : Colors.white,
                            border: Border.all(
                                color: const Color(0xff44655E,), width: 2),),
                          child: Center(
                              child: Text(
                            type[index],
                            style: TextStyle(
                                color: index == selectedIndex
                                    ? Colors.white
                                    : const Color(0xff44655E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          )),
                        ),
                      );
                    })),
            SizedBox(
              height: 280,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return NewProductWidget(product: pDetails[index],);
                  }),
            )
          ],
        ));
  }
}
