import 'package:serverpod/serverpod.dart';
import 'package:todoapp_server/src/generated/protocol.dart';

class TodoEndpoint extends Endpoint {
  Future<Todo> createTodo(Session session, Todo todo) async {
    final newTodo = await Todo.db.insertRow(session, todo);
    return newTodo;
  }

  Future<List<Todo>> getAllTodos(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) {
      throw Exception('Unauthorized request');
    }
    final allTodos = await Todo.db.find(
      session,
      where: (todo) => todo.userId.equals(userId),
    );
    return allTodos;
  }

  Future<Todo> updateTodo(Session session, Todo todo) async {
    if (todo.id == null) {
      throw Exception('No id found');
    }
    final updatedTodo = await Todo.db.updateRow(session, todo);
    return updatedTodo;
  }

  Future<int> deleteTodo(Session session, Todo todo) async {
    if (todo.id == null) {
      throw Exception('No id found');
    }
    final todoId = await Todo.db.deleteRow(session, todo);
    return todoId;
  }
}
