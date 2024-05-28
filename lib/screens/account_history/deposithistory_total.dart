import 'package:flutter/material.dart';

class Deposit_History_Total extends StatelessWidget {
  const Deposit_History_Total({super.key});

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
                      const Text("Net Deposit", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.25,
                      ),
                      const Text("€0", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Deposit", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.34,
                      ),
                      const Text("€1234.56", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Witdrawals", style: TextStyle(fontSize: 20)),
                      SizedBox(
                        width: width * 0.26,
                      ),
                      const Text("€1234.56", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              )),
        ),
        Container(
          height: height * 0.08,
          width: width,
          decoration: BoxDecoration(color: Colors.grey[500]),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("Net Profit", style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: width * 0.30,
                    ),
                    Text("€2,200.00", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
