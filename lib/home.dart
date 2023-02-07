import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jobmatch/data/toppingDataList.dart';
import 'package:jobmatch/loader.dart';
import 'package:jobmatch/toppings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;

    return Stack(children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffF3F3F3),
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/kota.png'),
                width: 350,
                height: 350,
              ),
              Text(
                'Add Toppings',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Toppings(),
              const SizedBox(height: 20),
              Row(
                // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    'R ' + totalAmount.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 30),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Loader(),
                        ),
                      );
                    },
                    child: Center(
                      child: Container(
                        height: 50.0,
                        width: width / 1.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.3)),
                        child: const Center(
                          child: Text('Order'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
