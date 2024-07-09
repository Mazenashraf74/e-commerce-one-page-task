import 'package:flutter/material.dart';

import 'categoris_model.dart';

class CategorisView extends StatefulWidget {
  final int index;
  final CategorisModel categorisModel;
  final Function? click;

  const CategorisView(
      {super.key,
      required this.index,
      this.click,
      required this.categorisModel});

  @override
  State<CategorisView> createState() => _CategorisViewState();
}

class _CategorisViewState extends State<CategorisView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 3.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          width: MediaQuery.of(context).size.width * 0.43,
          height: MediaQuery.of(context).size.height * 0.40,
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.475,
                        height: MediaQuery.of(context).size.height * 0.143,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            image: DecorationImage(
                                image: AssetImage(widget.categorisModel.image),
                                fit: BoxFit.fill)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: Icon(Icons.favorite_outline_outlined))
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.475,
                        height: MediaQuery.of(context).size.height * 0.137,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Column(
                          children: [
                            const Text(
                              "Nike Air Jordon\n"
                              "Nike shoes flexible for wo..",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 120, top: 7),
                                child: Text(
                                  widget.categorisModel.price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 56),
                                  child: Row(
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Review",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16)),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(widget.categorisModel.reviwe,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Image(
                                        image: AssetImage(
                                            "assets/image/Vector (3).png"))),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
