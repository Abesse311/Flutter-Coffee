import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:BorderRadius.circular(15),
                child: Image.asset("lib/img/caleb-_hnL_961xTk-unsplash.jpg"),
              ),
            Text("Latee",style: TextStyle(fontSize: 20,color: Colors.white),),
            Text("with oat milk",style: TextStyle(color: const Color.fromARGB(255, 159, 159, 159)),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.20",style: TextStyle(color: Colors.white,fontSize: 18),),
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
