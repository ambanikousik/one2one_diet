import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'productView.dart';

class productsView extends StatefulWidget{
 final listItem;
  productsView(this.listItem);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _productsView();
  }

}

class _productsView extends State<productsView>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return  Container(
      margin: const EdgeInsets.only(
          bottom: 5,
          top: 5,
          left: 10,
          right: 10,
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 20,
                child: Checkbox(
                  activeColor: Colors.blueGrey,
                  value: widget.listItem.checked,
                  onChanged: (bool value){
                    setState(() {
                      widget.listItem.checked = value;
                    });
                  },
                ),
              ),
              Text(widget.listItem.name,style: TextStyle(
                fontFamily: 'Museo',
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(icon: Icon(FontAwesomeIcons.minus), onPressed: (){
                setState(() {
                  if(widget.listItem.quantity>0){
                    widget.listItem.quantity--;
                  }
                });
              },),
              Container(
                  width:50,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(widget.listItem.quantity.toString(),style: TextStyle(fontWeight:FontWeight.w700,fontSize:20),),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black12),

              ),
              IconButton(icon: Icon(FontAwesomeIcons.plus), onPressed: () { setState(() {
                widget.listItem.quantity++;
              });},),
              SizedBox(width: 20,)
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: HexColor("b9d9eb"),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}