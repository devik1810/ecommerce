import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  String? images,price,name;
  @override
  State<ProductDetail> createState() => _ProductDetailState();

  ProductDetail(this.images, this.price, this.name);
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade400,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(Icons.arrow_back)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          Image.asset("${widget.images}"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(children: [
              Text("${widget.name}"),
            ]),
          ],
        ),
      ),
    );
  }
}