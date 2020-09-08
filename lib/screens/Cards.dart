import 'package:flutter/material.dart';
class Cards extends StatelessWidget {

  Widget button(String s,Icon i,click()){
    return GestureDetector(
      onTap: click,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 5.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              i,
              Text(s)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      child: GridView.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: <Widget>[
          button('Meals', Icon(Icons.fastfood,color: Colors.deepOrange,size: 70.0,), () => print('clicked')),
          button('Exercise', Icon(Icons.work,color: Colors.deepOrange,size: 70.0), () => print('clicked')),
          button('Blood Glucose', Icon(Icons.ac_unit,color: Colors.deepOrange,size: 70.0), () => print('clicked')),
          button('Records', Icon(Icons.ac_unit,color: Colors.deepOrange,size: 70.0), () => print('clicked')),
          button('Chat', Icon(Icons.chat_bubble_outline,color: Colors.deepOrange,size: 70.0), () => print('clicked')),
          button('Mission', Icon(Icons.ac_unit,color: Colors.deepOrange,size: 70.0), () => print('clicked')),
        ],
      ),
    );
  }
}
