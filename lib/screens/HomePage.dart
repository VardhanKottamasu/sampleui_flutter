import 'package:flutter/material.dart';

import 'Cards.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
            vertical:10.0,
              horizontal: 20.0
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Nourishly',style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0
                    ),),
                    CircleAvatar(
                      child: Icon(Icons.account_circle,size: 40.0,)
                    )
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Text('Fully participate in life while keeping diabetes management in check',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                Cards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
