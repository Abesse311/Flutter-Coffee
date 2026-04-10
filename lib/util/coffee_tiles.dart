import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String drink_name ;
  final String drink_description ;
  final String drink_price ;
  final String img_path;

  CoffeeTile({required this.drink_name, required this.drink_description, required this.img_path, required this.drink_price}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        width: 180, 
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:BorderRadius.circular(15),
                child: Image.asset(img_path),
              ),
            Text(drink_name,style: TextStyle(fontSize: 20,color: Colors.white),),
            Text(drink_description,style: TextStyle(color: const Color.fromARGB(255, 159, 159, 159)),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$" + drink_price.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[700],
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.add,color: Colors.white,),
                )
              ],
            )
            ],
          ),
        ),

        ),
    )
    ;
  }
}
