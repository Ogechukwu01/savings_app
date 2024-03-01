import 'package:flutter/material.dart';
import 'package:savings_app/savings/widgets/strict_savings_item.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Strict Savings",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38
              ),
          ),
          //GridView for holding savings categories
          SizedBox(
            height: 370,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              physics: NeverScrollableScrollPhysics(),
              children: [
                StrictSavingsItem(
                  title: "PiggyBank",
                  subtitle: "Automatic daily, weekly and monthly withdrawal",
                  color:  Colors.purple,
                  backgroundColor: Colors.purple.shade100,
                  textOnButton: "SETUP",
                ),
                StrictSavingsItem(
                    textOnButton: "LOCK MONEY",
                    title: "SafeLock",
                    subtitle: "Lock funds to avoid temptation",
                    color: Colors.purple.shade200,
                    backgroundColor: Colors.purple.shade50
                ),
                StrictSavingsItem(
                    textOnButton: "NEW GOALS",
                    title: "Target Savings",
                    subtitle: "Smash your savings goal faster",
                    color: Colors.green.shade600,
                  backgroundColor: Colors.green.shade50
                ),
                StrictSavingsItem(
                    textOnButton: "Add Money",
                    title: "HouseMoney",
                    subtitle: "Save for your housing",
                    color: Colors.orange,
                    backgroundColor: Colors.orange.shade50
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


