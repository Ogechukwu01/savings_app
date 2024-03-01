import 'package:flutter/material.dart';
import 'package:savings_app/savings/widgets/strict_savings_item.dart';

class FlexibleSavingsSection extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Flexible Savings",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black38
            ),
          ),
         //Flexible Section Below
         SizedBox(
           height: 250,
           child: GridView.count(
               crossAxisCount: 2,
               crossAxisSpacing: 8,
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
           children: [
             StrictSavingsItem(
                 textOnButton: "\$100",
                 title: "Flex Dollar",
                 subtitle: "Save in dollars,earn interest",
                 color: Colors.black87,
                 backgroundColor: Colors.lightGreenAccent,
             ),
             StrictSavingsItem(
                 textOnButton: "NGN 400000",
                 title: "Flex Naira",
                 subtitle: "Your emergency funds with interest",
                 color: Colors.pinkAccent,
                 backgroundColor: Colors.pink.shade50,
             ),
           ],
           ),
         )
        ],
      ),
    );
  }
}
