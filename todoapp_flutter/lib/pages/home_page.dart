import 'package:flutter/material.dart';
import 'package:todoapp_client/todoapp_client.dart';
import 'package:todoapp_flutter/src/session_manages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo>? _todos;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadTodos();
  }

  _loadTodos() async {
    final allTodos = await client.todo.getAllTodos();

    setState(() {
      _todos = allTodos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todos"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              sessionManager.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: _todos == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : _todos!.isEmpty
              ? const Center(
                  child: Text('Create your Todos'),
                )
              : Column(
                  children: _todos!
                      .map(
                        (todo) => ListTile(
                          onTap: () {
                            showTodoPopup(todo);
                          },
                          title: Text(todo.title),
                          trailing: IconButton(
                            onPressed: () async {
                              await client.todo.deleteTodo(todo);
                              _loadTodos();
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ),
                      )
                      .toList(),
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTodoPopup();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  showTodoPopup([Todo? todo]) {
    return showDialog(
      context: context,
      builder: (context) {
        final titleCtrl = TextEditingController(
          text: todo != null ? todo.title : '',
        );
        final descCtrl = TextEditingController(
          text: todo != null ? todo.description : '',
        );

        return AlertDialog(
          title: TextFormField(
            controller: titleCtrl,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          content: TextFormField(
            controller: descCtrl,
            maxLines: 5,
            minLines: 5,
            decoration: InputDecoration(
              labelText: 'Description',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () async {
                if (todo != null) {
                  final updatedTodo = todo.copyWith(
                    title: titleCtrl.text,
                    description: descCtrl.text,
                  );

                  await client.todo.updateTodo(updatedTodo);
                } else {
                  final newTodo = Todo(
                    title: titleCtrl.text,
                    description: descCtrl.text,
                    isCompleted: false,
                    userId: sessionManager.signedInUser!.id!,
                  );

                  await client.todo.createTodo(newTodo);
                }

                _loadTodos();
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
