import 'package:flutter/material.dart';
import 'package:shop_app/pages/detail_page.dart';
import 'package:shop_app/gloabal_var.dart';
import 'package:shop_app/widgets/product_card.dart';

class ListV extends StatelessWidget {
  const ListV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final prod = products[index];
        return GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return DetailsPage(product: prod);
            }
            )
            );
          },
          child: ProductCard(
            title: prod['title'] as String,
            price: prod['price'] as double,
            imageUrl: prod['imageUrl'] as String,
            color: index.isEven
                ? Color.fromRGBO(216, 240, 253, 1)
                : Color.fromRGBO(245, 247, 249, 1),
            isGrid: false,
          ),
        );
      },
    );
  }
}
