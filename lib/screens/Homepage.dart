import 'package:flutter/material.dart';
import 'package:flutter_multiprovider/screens/CountExample.dart';
import 'package:flutter_multiprovider/screens/SliderExample.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: Text("Go to Count Example"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CountExample()));
            },
          ),
          ElevatedButton(
            child: Text("Go to Slider Example"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SliderExample()));
            },
          ),
        ]),
      ),
    );
  }
}
