import 'package:flutter/material.dart';

import '../models/models.dart';

class CardProductCard extends StatelessWidget {
  final Product product;

  const CardProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  "EG ${product.price.toString()}",
                  style: Theme.of(context).textTheme.bodyText2,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.remove_circle),
              ),
              Text(
                "1",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle),
              ),
            ],
          )
        ],
      ),
    );
  }
}
