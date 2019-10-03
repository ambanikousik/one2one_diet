import 'package:flutter/material.dart';
import 'body.dart';
import 'productView.dart';
import 'package:flutter_launch/flutter_launch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The 1:1 Diet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'The 1:1 Diet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void sendWhatsapp(String text, bool canSend) async {
    if(canSend) {
      await FlutterLaunch.launchWathsApp(phone: " +44 77903 89551", message: text);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("6cace4"),
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(
          fontFamily:'Museo',
          fontWeight: FontWeight.w700,
        ),),
      ),
      body: ListView.builder(
        itemCount: ProductsList.length,
        itemBuilder: (context, index) {
          final products = ProductsList[index];
          return productsView(products);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String text="Tanya's Order Form for 1:1 Diet: \n";
          for( var i = 0 ; i <ProductsList.length; i++ ) {
            final products = ProductsList[i];
            if(products.quantity>0 && products.checked == true){
              text = text+'\n'+products.name+': '+products.quantity.toString();
              canSend = true;
            }
            sendWhatsapp(text,canSend);
          }
        },
        tooltip: 'Send to Whatsapp',
        child: Icon(Icons.send),
        backgroundColor: Colors.indigo,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
