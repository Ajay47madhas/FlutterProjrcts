import 'package:flutter/material.dart';
import 'package:shopzoneapp/models/product.dart';

class ProductCart extends StatelessWidget {
  final Products product;
  final EdgeInsets margin;
  final Function onTap;

  const ProductCart(
      {super.key,
      required this.product,
      required this.onTap,
      this.margin = const EdgeInsets.only()});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onTap(),
      child: Container(
        margin: margin,
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.01,
            horizontal: MediaQuery.sizeOf(context).width * 0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 18),
          ],
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(product.image),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _priceinfo(context),
            Text(
              product.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget _priceinfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "₹${product.price}",
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const Icon(Icons.favorite_outline),
      ],
    );
  }
}
