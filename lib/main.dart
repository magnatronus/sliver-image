import 'package:flutter/material.dart';
import 'package:sliverimagewidget/sliverimage.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(
        title: Text("SliverImage Widget Demo"),
      ),

      body: new CustomScrollView(
        slivers: <Widget>[
          
          SliverImage(
            image: Image(image: AssetImage("assets/images/teide.jpg")),
            maxHeight: 285.00
          ),

          new SliverList(
            delegate: new SliverChildListDelegate(buildListTiles(40))
          )

      ]
    )

    );
  }

  List buildListTiles(int count) {

    List<Widget> tiles = List();
    for (int i = 0; i < count; i++) {
      tiles.add(
        ListTile(
          leading: Icon(Icons.beach_access),
          trailing: Icon(Icons.arrow_forward_ios),
          title: Text('Tile Number ${i.toString()}'),
        )
      );
    }
    return tiles;
  }

}
