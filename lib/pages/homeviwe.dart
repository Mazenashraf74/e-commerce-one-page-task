import 'package:flutter/material.dart';
import 'package:task_ecommers/widget/custom_categori.dart';
import 'package:task_ecommers/widget/serach%20bar.dart';

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
    CategorisModel(
        price: "EGP 1700",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.4)'),
    CategorisModel(
        price: "EGP 1700",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.4)'),
    CategorisModel(
        price: "EGP 1700",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.4)'),
    CategorisModel(
        price: "EGP 1700",
        image: "assets/image/a4cb63f336124bc440b84fe727065982.jpg",
        reviwe: '(4.4)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SerachBar(),
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
