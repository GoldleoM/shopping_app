import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Cart')),
      body: Center(
        child: cart.isEmpty
            ? Text('Cart Empty')
            : ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                  final item = cart[index];
                   return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(item['imageUrl'] as String),
                      radius: 30,
                    ),
                    trailing: IconButton(
                      onPressed: (){
                      showDialog(context: context, 
                      builder: (context){
                        return AlertDialog(
                          title: Text("Delete Product",
                          style: Theme.of(context).textTheme.titleMedium,
                          ),
                          content: Text("Are you sure you want to remove product from your cart?"),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, 
                            child: Text("No",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            )
                            ),
                            TextButton(onPressed: (){
                            context.read<CartProvider>().removeProduct(item);                              Navigator.of(context).pop();
                              ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                              content: Text("Product Removed Succesfully!"),
                              ),
                            );
                            }, 
                            child: Text("Yes",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),)
                            ),
                          ],
                        );
                      }
                      );
                    }, 
                    icon: const Icon(Icons.delete,
                    color: Colors.red,)
                    ),
                    title: Text(item['title'].toString(),
                    style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text('Size: ${item['size'].toString()}',
                    ),
                   );
                },
              ),
      ),
    );
  }
}
