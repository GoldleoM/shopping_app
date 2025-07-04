import 'package:flutter/material.dart';
import 'package:shop_app/pages/cart_page.dart';
import 'package:shop_app/widgets/product_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {

  int currPage = 0;

  List<Widget> pages = [
    ProductList(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        currentIndex: currPage,
        onTap: (value){
            setState(() {
              currPage = value;
            });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
        label: 'Cart',
        ),
      ]
      ),
      body: IndexedStack(
        index: currPage,
        children: pages,
      )
    );
  }
}
