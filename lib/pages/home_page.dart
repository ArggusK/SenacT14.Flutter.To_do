import 'package:flutter/material.dart';
import 'package:todo/widgets/inputWidget.dart';
import 'package:todo/widgets/SendButtonWidget.dart';
import 'package:todo/widgets/listWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userList = <String>[];
  var textController1 = TextEditingController();

  void sendNameUser() {
    String name = textController1.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Por favor, insira um nome válido.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    setState(() {
      userList.add(name);
      textController1.clear();
    });
  }

  void deleteUser(int index) {
    setState(() {
      userList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          InputWidget(controller: textController1, label: "Write a name"),
          Expanded(
            child: ListWidget(
              userList: userList,
              onDeleteUser: deleteUser,
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          SendButton(
            onPressed: sendNameUser,
          ),
        ],
      ),
    );
  }
}
