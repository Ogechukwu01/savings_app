import 'package:flutter/material.dart';
import 'package:savings_app/features/home/widgets/hide_todo_sheet.dart';

import 'my_todo_item.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Header Row Start
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
              "My Todo",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
                    ),
                  ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      builder: (context) {
                       return HideTodoSheet();

                      },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Hide",
                      style: TextStyle(color: Colors.red.shade700),
                    ),
                    Icon(
                        Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.red.shade700,
                    )
                  ],
                ),
              )
            ],
          ),
          //ListView Start
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                ),
                MyTodoItem(
                  title: "Enable FaceID/Fingerprint",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add a picture",
                  progress: 0,
                ),
            MyTodoItem(
              title: "Add your BVN",
              progress: 0.3,
            ),
            MyTodoItem(
              title: "Verify your Identity",
              progress: 0,
            ),
            MyTodoItem(
              title: "Add your Address",
              progress: 0.3,
            )
              ],
            ),
          )
        ],
      ),
      );
  }
}



