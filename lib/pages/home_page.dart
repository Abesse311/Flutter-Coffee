import 'package:coffe_app_koko/util/coffee_tiles.dart';
import 'package:coffe_app_koko/util/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 130, 130, 130),
      appBar: AppBar(
        backgroundColor: Colors.black26,
        leading: Icon(Icons.menu,color: Colors.white,size:26,),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.person_3,color: Colors.white,),
        )],
        ),
        bottomNavigationBar: 
        BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange[700],
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active),label: ""),
          ]),








      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                "Find the best \ncoffee for you",
                style: GoogleFonts.bebasNeue(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white10),
                  ),
                  hintText: "Find your coffee",
                  hintStyle: GoogleFonts.bebasNeue(),
                  prefixIcon: Icon(Icons.search)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTypess(coffe_type: "Cappuccinodddd "),
                CoffeeTypess(coffe_type: "Latte"),
                CoffeeTypess(coffe_type: "Milk schake"),
                CoffeeTypess(coffe_type: "Chokolate milk"),
                CoffeeTypess(coffe_type: "Simple Tee"),
                
              ],
            ),
            ),
           Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(drink_description: "with nothing",drink_name: "Tee",drink_price: "12",img_path:"lib/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg" ,),
                  CoffeeTile(drink_description: "with nothing",drink_name: "Tee",drink_price: "00",img_path:"lib/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg" ,),
                  CoffeeTile(drink_description: "with nothing",drink_name: "Tee",drink_price: "10",img_path:"lib/img/nathan-dumlao-nBJHO6wmRWw-unsplash.jpg" ,),
              
                ],
              )
              )
            
          ],
        ),
      ),
    );
  }
}
