// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CoffeeTypess extends StatelessWidget {
  final String coffe_type ;

  CoffeeTypess({required this.coffe_type});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        coffe_type,style: TextStyle(fontSize: 18,color: Colors.white),),
    );
  }
}