import 'package:flutter/material.dart';
import 'package:to_do_app_using_flutter_firebase/screen/add_task.dart';
import 'package:to_do_app_using_flutter_firebase/screen/profile.dart';

class taskListScreen extends StatefulWidget {
  const taskListScreen({super.key});

  @override
  State<taskListScreen> createState() => _taskListScreenState();
}

class _taskListScreenState extends State<taskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TASK LIST'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Profile()));
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Add_task()));
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
