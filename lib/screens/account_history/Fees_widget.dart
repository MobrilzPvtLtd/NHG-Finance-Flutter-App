import 'package:flutter/material.dart';

class Fees_widget extends StatelessWidget {
  const Fees_widget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.15,
          width: width,
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text("Fees", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.41,
                      ),
                      const Text("€0", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Closed Trades Profit",
                          style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      const Text("€1234.56", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Trade Profit",
                          style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.25,
                      ),
                      const Text("€1234.56", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
