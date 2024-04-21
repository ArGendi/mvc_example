import 'package:flutter/material.dart';
import 'package:mvc_example/controllers/task_controller.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  var controller = TaskListController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.tasks.length,
      itemBuilder: (context, index) {
        final task = controller.tasks[index];
        return ListTile(
          title: Text(task.title),
          leading: Checkbox(
            value: task.completed,
            onChanged: (value) {
              setState(() =>
                controller.toggleTaskCompletion(index)
              );
            },
          ),
        );
      },
    );
  }
}