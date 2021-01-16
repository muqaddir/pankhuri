import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String button1;
  final String button2;

  BottomButton({@required this.button1, @required this.button2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton.extended(
            onPressed: null,
            label: Text("    $button1     "),
            backgroundColor: Colors.green[600],
            elevation: 0,
          ),
          FloatingActionButton.extended(
            onPressed: null,
            label: Text("     $button2   "),
            backgroundColor: Colors.green[600],
            elevation: 0,
          )
        ],
      ),
    );
  }
}
