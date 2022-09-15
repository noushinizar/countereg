import 'package:countereg/provider/providerclass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Providerclass>(context).getcounter ;
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            )
            ,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<Providerclass>(context,listen: false).incrementcounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
