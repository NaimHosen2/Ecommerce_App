import 'package:ecommerce_app/home_pages.dart';
import 'package:flutter/material.dart';
class Bnbar extends StatefulWidget {
  const Bnbar({super.key});

  @override
  State<Bnbar> createState() => _BnbarState();
}

class _BnbarState extends State<Bnbar> {
  List pages=[HomePages()];
  int indext=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indext],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indext,
        onTap: (value){
          indext=value;
          setState(() {

          });


        },
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
        ],
      ),
    );
  }
}

