import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.color,
    required this.isGrid
  });

  final String title;
  final double price;
  final String imageUrl;
  final Color? color;
  final bool isGrid;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
          style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 5,),
          Text('\$$price',
          style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 5,),
          Center(child: Image.asset(imageUrl,
          height: 150,
          width: double.infinity,
          fit:BoxFit.contain)),
        ],
      ),
    );
  }
}