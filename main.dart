import 'package:flutter/material.dart';

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
      home: Orientacion(),
    );
  }
}

class Orientacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: OrientationBuilder(
          builder: (context, orientacion) {

            // SI LA ORIENTACION ESTA EN VERTICAL
            if(orientacion == Orientation.portrait) {

              return new Scaffold(
                appBar: AppBar(
                  title: Text("ORIENTACIÓN VERTICAL"),
                  backgroundColor: Colors.green,
                ),

                body: new Container(
                  padding: EdgeInsets.all(10.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Text("Texto en VERTICAL"),
                        ],
                      ),

                      new RaisedButton(
                          child: Text("VERTICAL"),
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: () { }
                      ),

                    ],
                  ),
                ),

              );

            } else {
              // SI LA ORIENTACION ESTA EN HORIZONTAL

              return new Scaffold(
                appBar: AppBar(
                  title: Text("ORIENTACIÓN HORIZONTAL"),
                  backgroundColor: Colors.red,
                ),

                body: new Container(
                  padding: EdgeInsets.all(10.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[

                      new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: <Widget>[
                          Text("Texto en HORIZONTAL"),
                        ],
                      ),

                      new RaisedButton(
                          child: Text("HORIZONTAL"),
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () { }
                      ),

                    ],
                  ),
                ),

              );

            }

          }
      ),
    );
  }

}
