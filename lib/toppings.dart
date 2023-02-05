import 'package:flutter/material.dart';
import 'package:jobmatch/data/toppingDataList.dart';

class Toppings extends StatefulWidget {
  const Toppings({Key? key}) : super(key: key);

  @override
  State<Toppings> createState() => _ToppingsState();
}

class _ToppingsState extends State<Toppings> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Flexible(
          child: ListView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10, bottom: 20, top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(topingAddOns[index].image),
                    width: 70,
                    height: 50,
                  ),
                ),
                const Spacer(),
                Text(
                  topingAddOns[index].title,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "+ R10",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFFBB24B)),
                  ),
                )
              ],
            ),
          );
        }),
        itemCount: topingAddOns.length,
      )),
    );
  }
}
