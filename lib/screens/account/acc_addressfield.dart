import 'package:flutter/material.dart';

class Account_AddressField extends StatelessWidget {
  const Account_AddressField({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: height * 0.80,
                  width: width,
                  color: Colors.grey[200],
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Building Number or Name",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Street Name",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "City",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "State/Province",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Zip/Postal Code",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Country",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                focusColor: Colors.white,
                                disabledBorder: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ],
                      )),
                ),

                // Address section
              );
  }
}