library widgets;
import 'package:flutter/material.dart';

class ItemCatalogueWidget extends StatefulWidget {
  const ItemCatalogueWidget({super.key});

  @override
  State<ItemCatalogueWidget> createState() => _ItemCatalogueWidgetState();
}

class _ItemCatalogueWidgetState extends State<ItemCatalogueWidget> { 
  @override
   Widget build(BuildContext context) { 
    Size size = MediaQuery.of(context).size;
     return GestureDetector( 
      onTap: () {}, 
      child:Row(
        children: [
          Expanded(
            child: Padding(
              padding : const EdgeInsets.only(top:4.0, bottom: 4.0),
              child: Container(
                decoration: BoxDecoration(
                  color:Theme.of(context).cardColor.withOpacity(0.6),
                  borderRadius : BorderRadius.circular(12),
                ),//BoxDecoration
                child:Row(
                  children: [
                  Container(
                    height:size.width*0.25,
                    width : size.width*0.25,
                    decoration : const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/cat/fruits.png',
                          ),
                          fit: BoxFit.fill
                          ),
                    )
                  )

                ],)
                )
              )
            )
        ],)
       ); 
      } 
    } 