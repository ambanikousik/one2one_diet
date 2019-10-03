import 'package:flutter/material.dart';
import 'body.dart';
import 'productView.dart';
import 'package:flutter_launch/flutter_launch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '1:1 Diet'),
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

  void sendWhatsapp(String text) async {
    await FlutterLaunch.launchWathsApp(phone: "+880 1673-856051", message: text);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
          String text='';
          for( var i = 0 ; i <ProductsList.length; i++ ) {
            final products = ProductsList[i];
            if(products.quantity>0 && products.checked == true){
              text = text+products.name+': '+products.quantity.toString()+'\n';
            }
            sendWhatsapp(text);
          }
        },
        tooltip: 'Send to Whatsapp',
        child: Icon(Icons.send),
        backgroundColor: Colors.green,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
