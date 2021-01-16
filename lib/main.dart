import 'package:flutter/material.dart';
import 'package:pankhuri/widgets/bottomButtom.dart';
import 'package:pankhuri/widgets/orderCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pankhuri',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.lightGreen[200],
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: CloseButton(
                        color: Colors.green[600],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Order Complete",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[600]),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //A new widge for the order details with not hardcoded data

                    OrderCard(
                      url:
                          "https://gumlet.assettype.com/Prabhatkhabar%2F2020-07%2F1112647a-8739-4080-acd2-a59ecf1ec040%2Fmehndi.jpg?auto=format%2Ccompress&w=400&dpr=2.6",
                      title:
                          "Baking Wedding cakes. DIY Recipies for your big day. Take Control.",
                      date: "27-30 July",
                      time: "3.30-4.30 PM",
                      regNo: "Reg.No.:0098472838BNG",
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    //
                    SizedBox(
                        height: 200,
                        width: 370,
                        child: Text(
                          "Your Booking is confirmed.\n You can find all the details \n of your booking under 'Orders and  Booking' in the menu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),

                //Widget for bottom buttons
                Positioned(
                    width: 400,
                    bottom: 0,
                    child: BottomButton(
                      button1: "View Booking",
                      button2: "Explore More",
                    ))
              ],
            ),
          )),
    );
  }
}
