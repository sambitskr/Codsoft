import 'package:flutter/material.dart';
import 'package:to_do_list/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user inout
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Add a new Task",
              ),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(
                  text: "Save",
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 9,
                ),

                // cancel button
                MyButton(
                  text: "Cancel",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
