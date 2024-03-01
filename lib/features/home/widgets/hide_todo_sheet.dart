import 'package:flutter/material.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              "assets/images/piggyvest.png",
            height: 80,
            width: 80,
          ),
          SizedBox(height: 24,),
          Text(
              "Hide TO-DOList",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
          ),
          SizedBox(height: 24,),
          Text("Temporarily hide all to-do list till tomorrow"),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Divider(),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width, 55),
                shape: RoundedRectangleBorder(),
                side: BorderSide(
                    color:Colors.red.shade700,
                  width: 2,
                ),
            ),
              child: Text(
                  "Hide Todo List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
          )
        ],
      ),
    );
  }
}