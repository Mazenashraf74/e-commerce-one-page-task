import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SerachBar extends StatelessWidget {
  const SerachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
