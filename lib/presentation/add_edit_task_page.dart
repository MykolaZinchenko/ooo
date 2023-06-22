import 'package:flutter/material.dart';

class AddEditTaskPage extends StatefulWidget {
  final String
      taskId;

  const AddEditTaskPage({required this.taskId});

  @override
  _AddEditTaskPageState createState() => _AddEditTaskPageState();
}

class _AddEditTaskPageState extends State<AddEditTaskPage> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _saveTask() {
    String title = _titleController.text;


    Navigator.pop(context, title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.taskId.isNotEmpty ? 'New TODO' : 'Edit TODO',
              style: const TextStyle(
                color: Color.fromRGBO(16, 16, 16, 1),
                fontFamily: 'Commissioner',
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
                height: 1.3,
                letterSpacing: 0.0,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: _saveTask,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(97, 120, 201, 1),
                minimumSize: const Size(343.0, 58.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
              child: const SizedBox(
                width: 58.0,
                height: 26.0,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'CREATE',
                    style: TextStyle(
                      fontFamily: 'Impact',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                      letterSpacing: 0.0,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
