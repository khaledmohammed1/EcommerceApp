import 'package:flutter/material.dart';

import '../models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishList;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 4,
    this.isWishList = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/product',
          arguments: product,
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / widthFactor,
              height: 150,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 85,
            left: isWishList?leftPosition + 50:leftPosition - 5,
            child: Container(
              width: MediaQuery.of(context).size.width / widthFactor,
              height: 60,
              decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
            ),
          ),
          Positioned(
            top: isWishList?86:80,
            left: isWishList?leftPosition + 50:leftPosition + 5,
            right: leftPosition + 4,
            child: Container(
              width: MediaQuery.of(context).size.width / widthFactor -
                  leftPosition,
              height: 50,
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "EG ${product.price.toString()}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  isWishList?SizedBox(width: MediaQuery.of(context).size.width*.05,):const SizedBox(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  isWishList?
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 20,
                    ),
                  ):const SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
