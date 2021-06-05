import 'package:flutter/material.dart';

Widget shoppingCard(String img, String product_name, String price) {
  return InkWell(
    onTap:(){} ,
      child: Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 130.0,
      height: 180.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(img,
          fit: BoxFit.contain,
          height: 80.0,
          ),
          SizedBox(height: 8.0,),
          Text(product_name,style: TextStyle(fontSize: 20.0,
          fontWeight: FontWeight.w700,
          ),),
          SizedBox(height: 5.0,),
          Text(price,style: TextStyle(fontSize: 20.0,
          color: Colors.orange[500],
          fontWeight: FontWeight.w700,
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart),
            )
          ],)


        ],
      ),
    ),
  );
}
