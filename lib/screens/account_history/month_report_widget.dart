import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/deposit.dart';
import 'package:nhg_finance_app/screens/deposit_withdraw/withdraw.dart';
import 'package:nhg_finance_app/widget/custom_button.dart';
import 'package:nhg_finance_app/widget/custom_widget.dart';

class Month_Report_Widget extends StatelessWidget {
  const Month_Report_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Custom_Widget(
              height: height * 0.10,
              width: width * 0.30,
              text: "DAILY PROFIT",
              TextSize: 12,
              fontweight: FontWeight.bold,
              text2: '1,2,3%',
              TextSize2: 10,
              fontweight2: FontWeight.bold,
            ),
            Custom_Widget(
              height: height * 0.10,
              width: width * 0.30,
              text: "WEEKLY PROFIT",
              TextSize: 12,
              fontweight: FontWeight.bold,
              text2: '1,2,3%',
              TextSize2: 10,
              fontweight2: FontWeight.bold,
            ),
            Custom_Widget(
              height: height * 0.10,
              width: width * 0.30,
              text: "MONTHLY PROFIT",
              TextSize: 12,
              fontweight: FontWeight.bold,
              text2: '1,2,3%',
              TextSize2: 10,
              fontweight2: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Custom_Widget(
          height: height * 0.10,
          width: width,
          text: "MONTHLY PROFIT",
          TextSize: 18,
          fontweight: FontWeight.bold,
          text2: '1,2,3,4,5,6,7,8,9,0%',
          TextSize2: 15,
          fontweight2: FontWeight.bold,
        ),
        const Text("Add Lifetime Performance (We Make Graphics)"),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Custom_button(
                 onpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Deposit()));
                 },
                buttonname: "Deposit",
                color: Color.fromARGB(255, 5, 167, 204),
                height: height * 0.05,
                width: width * 0.36,
                Fontsize: 12),
            Custom_button(
              onpressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Withdraw()));
              },
                buttonname: "Withdraw",
                color: Color.fromARGB(255, 5, 167, 204),
                height: height * 0.05,
                width: width * 0.36,
                Fontsize: 12)
          ],
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text("Broker Account Balance",
                style: TextStyle(fontSize: 12)),
            Text("€10,000.00", style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
