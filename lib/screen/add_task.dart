import 'package:flutter/material.dart';
import 'package:to_do_app_using_flutter_firebase/screen/taskList_screen.dart';

class Add_task extends StatefulWidget {
  const Add_task({super.key});

  @override
  State<Add_task> createState() => _Add_taskState();
}

class _Add_taskState extends State<Add_task> {
  @override
  Widget build(BuildContext context) {
    print('check');
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "TASK DESCRIPTION",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                'ADD TASK',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
