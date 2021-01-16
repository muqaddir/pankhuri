import 'package:flutter/material.dart';
import 'package:pankhuri/widgets/trialpaint.dart';

class OrderCard extends StatelessWidget {
  final String url;
  final String title;
  final String date;
  final String time;
  final String regNo;

  OrderCard(
      {@required this.url,
      @required this.title,
      @required this.date,
      @required this.time,
      @required this.regNo});

  @override
  Widget build(BuildContext context) {
    var height = 150.00;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: height,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(0.5, 0.5),
                  blurRadius: 10,
                  spreadRadius: 2)
            ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 70,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            date,
                            style: TextStyle(
                                color: Colors.pinkAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " | ",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            time,
                            style: TextStyle(
                              color: Colors.pinkAccent,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(regNo)
                  ],
                )
              ],
            ),
          ),
        ),

        // Confirmed Shape drawn with CustomPainter
        Positioned(left: 10, top: height / 5, child: Trial())
      ],
    );
  }
}
