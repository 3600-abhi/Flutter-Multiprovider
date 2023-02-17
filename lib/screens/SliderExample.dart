import 'package:flutter/material.dart';
import 'package:flutter_multiprovider/providers/SliderProvider.dart';
import 'package:provider/provider.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  @override
  Widget build(BuildContext context) {
    final sliderProvider = Provider.of<SliderProvider>(context, listen: false);
    print("Build Slider Example ${sliderProvider.sliderValue}");
    return Scaffold(
      appBar: AppBar(title: Text("Slider Example"), centerTitle: true),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Consumer<SliderProvider>(builder: ((context, value, child) {
            return Slider(
              value: sliderProvider.sliderValue,
              onChanged: (value) {
                sliderProvider.updateSliderValue(value);
              },
            );
          })),
          Consumer<SliderProvider>(builder: ((context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    child: Center(
                        child: Text("Container 1",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    color: Colors.green.withOpacity(value.sliderValue),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    child: Center(
                        child: Text("Container 2",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    color: Colors.red.withOpacity(value.sliderValue),
                  ),
                )
              ],
            );
          }))
        ]),
      ),
    );
  }
}
