import 'package:flutter/material.dart';
import 'add_edit_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tasks = [];

  void _addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  Future<void> _navigateToAddEditTaskPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddEditTaskPage(taskId: ''),
      ),
    );

    if (result != null) {
      _addTask(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        title: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'TODO App',
              style: TextStyle(
                color: Color.fromRGBO(109, 110, 114, 1),
                fontFamily: 'Impact',
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 16.06),
            child: TextButton(
              onPressed: _navigateToAddEditTaskPage,
              child: const Text(
                'Create',
                style: TextStyle(
                  color: Color.fromRGBO(152, 154, 166, 1),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                _removeTask(index);
              },
            ),
          );
        },
      ),
    );
  }
}
