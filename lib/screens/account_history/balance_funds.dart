import 'package:flutter/material.dart';

class Balance_Fund_widget extends StatelessWidget {
  const Balance_Fund_widget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.10,
          width: width,
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("Balance", style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: width * 0.30,
                    ),
                    Text("€10,000.00", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Row(
                  children: [
                    const Text("Funds", style: TextStyle(fontSize: 20)),
                    SizedBox(
                      width: width * 0.34,
                    ),
                    Text("€10,000.00", style: TextStyle(fontSize: 20)),
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
