import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_ecommers/widget/custom_categori.dart';

import '../widget/categoris_model.dart';

class HomeViwe extends StatefulWidget {
  const HomeViwe({super.key});

  @override
  State<HomeViwe> createState() => _HomeViweState();
}

class _HomeViweState extends State<HomeViwe> {
  final List<CategorisModel> catlist = [
    CategorisModel(
        price: "EGP 1500",
        image: "assets/image/0b089a0cbd184e6c358f2d6c87633283.jpg",
        reviwe: '(4.5)'),
    CategorisModel(
        price: "EGP 1200",
        image: "assets/image/a53234ca66d41f2e22babae3c4240b67.jpg",
        reviwe: '(4.7)'),
    CategorisModel(
        price: "EGP 1900",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.6)'),
    CategorisModel(
        price: "EGP 2500",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.9)'),
    CategorisModel(
        price: "EGP 1400",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.5)'),
    CategorisModel(
        price: "EGP 1700",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.4)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 10),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.84,
              height: MediaQuery.of(context).size.height * 0.1,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.search),
                  hintText: "what do you search for ?",
                  hintStyle: const TextStyle(color: Color(0xFF06004F)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide:
                          const BorderSide(color: Color(0xFF004182), width: 1)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 6),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.1,
              child: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.shopping_cart)),
            ),
          ),
        ],
      ),
      Expanded(
          child: GridView.builder(
              padding: EdgeInsets.all(5),
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 5 / 6.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2),
              itemBuilder: (context, index) => CategorisView(
                    index: index,
                    click: () {
                      setState(() {});
                    },
                    categorisModel: catlist[index],
                  ))),
    ]));
  }
}
