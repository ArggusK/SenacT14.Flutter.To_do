import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List<String> userList;
  final Function(int) onDeleteUser;

  const ListWidget({
    super.key,
    required this.userList,
    required this.onDeleteUser,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index) {
        return ListTile(
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => onDeleteUser(index),
          ),
          leading: const Icon(Icons.person),
          title: Text(userList[index]),
        );
      },
    );
  }
}
