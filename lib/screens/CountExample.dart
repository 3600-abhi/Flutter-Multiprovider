import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_multiprovider/providers/CountProvider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 3), (timer) {
      countProvider.updateCount();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Build Count Example ${countProvider.count}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Example"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("The value of count is : ", style: TextStyle(fontSize: 25)),
          SizedBox(height: 5),
          Consumer<CountProvider>(builder: (context, value, child) {
            return Text("${value.count}",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold));
          })
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          countProvider.updateCount();
        },
      ),
    );
  }
}
