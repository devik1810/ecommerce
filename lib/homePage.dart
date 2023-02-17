import 'package:flutter/material.dart';

import 'detail.dart';

class E_Commerce extends StatefulWidget {
  const E_Commerce({Key? key}) : super(key: key);

  @override
  State<E_Commerce> createState() => _E_CommerceState();
}

class _E_CommerceState extends State<E_Commerce> {
  List Images = [
    "assets/images/airpods.jpg.",
    "assets/images/homepod.jpg",
    "assets/images/iwatch.jpg",
    "assets/images/ipad.jpg",
    "assets/images/iphone.jpg",
  ];
  List Price = [
    "₹1800.00",
    "₹17900.00",
    "₹15000.00",
    "₹21000.00",
    "₹89900.00",
  ];
  List Name = [
    "airpod",
    "homepod",
    "i-watch",
    "ipad",
    "i-phone",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text("Explore Product")),
        ),
        backgroundColor: Colors.blue.shade200,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 225,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Apple Product                    🔍",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    Images.asMap().entries.map((e) => Product(e.key)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Product(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetail(Images[index], Price[index], Name[index]),
                ));
          });
        },
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle),
                        child: Icon(Icons.favorite),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade400, shape: BoxShape.circle),
                        child: Icon(Icons.local_mall),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(Images[index]),
              SizedBox(height: 20),
              Text("${Price[index]}"),
              Text("${Name[index]}"),
            ],
          ),
        ),
      ),
    );
  }
}
