import 'package:flutter/material.dart';
class productsView extends StatelessWidget{
   var listItem;
   productsView(this.listItem);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(
        bottom: 8,
          top: 2,
          left: 5,
          right: 5
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(listItem.name),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.redAccent,
          borderRadius: BorderRadius.circular(5),
        ),
        //padding: EdgeInsets.only(bottom:10),
      ),
    );
  }

}