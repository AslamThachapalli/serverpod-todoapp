/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Todo extends _i1.TableRow {
  Todo._({
    int? id,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.userId,
  }) : super(id);

  factory Todo({
    int? id,
    required String title,
    required String description,
    required bool isCompleted,
    required int userId,
  }) = _TodoImpl;

  factory Todo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Todo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      isCompleted: serializationManager
          .deserialize<bool>(jsonSerialization['isCompleted']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
    );
  }

  static final t = TodoTable();

  static const db = TodoRepository._();

  String title;

  String description;

  bool isCompleted;

  int userId;

  @override
  _i1.Table get table => t;

  Todo copyWith({
    int? id,
    String? title,
    String? description,
    bool? isCompleted,
    int? userId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'userId': userId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'userId': userId,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      case 'isCompleted':
        isCompleted = value;
        return;
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Todo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Todo>(
      where: where != null ? where(Todo.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Todo?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Todo>(
      where: where != null ? where(Todo.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Todo?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Todo>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TodoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Todo>(
      where: where(Todo.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Todo>(
      where: where != null ? where(Todo.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TodoInclude include() {
    return TodoInclude._();
  }

  static TodoIncludeList includeList({
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    TodoInclude? include,
  }) {
    return TodoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Todo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Todo.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TodoImpl extends Todo {
  _TodoImpl({
    int? id,
    required String title,
    required String description,
    required bool isCompleted,
    required int userId,
  }) : super._(
          id: id,
          title: title,
          description: description,
          isCompleted: isCompleted,
          userId: userId,
        );

  @override
  Todo copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    bool? isCompleted,
    int? userId,
  }) {
    return Todo(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      userId: userId ?? this.userId,
    );
  }
}

class TodoTable extends _i1.Table {
  TodoTable({super.tableRelation}) : super(tableName: 'todos') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    isCompleted = _i1.ColumnBool(
      'isCompleted',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnBool isCompleted;

  late final _i1.ColumnInt userId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        isCompleted,
        userId,
      ];
}

@Deprecated('Use TodoTable.t instead.')
TodoTable tTodo = TodoTable();

class TodoInclude extends _i1.IncludeObject {
  TodoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Todo.t;
}

class TodoIncludeList extends _i1.IncludeList {
  TodoIncludeList._({
    _i1.WhereExpressionBuilder<TodoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Todo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Todo.t;
}

class TodoRepository {
  const TodoRepository._();

  Future<List<Todo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Todo>(
      where: where?.call(Todo.t),
      orderBy: orderBy?.call(Todo.t),
      orderByList: orderByList?.call(Todo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Todo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? offset,
    _i1.OrderByBuilder<TodoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TodoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Todo>(
      where: where?.call(Todo.t),
      orderBy: orderBy?.call(Todo.t),
      orderByList: orderByList?.call(Todo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Todo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Todo>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Todo>> insert(
    _i1.Session session,
    List<Todo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Todo>(
      rows,
      transaction: transaction,
    );
  }

  Future<Todo> insertRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Todo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Todo>> update(
    _i1.Session session,
    List<Todo> rows, {
    _i1.ColumnSelections<TodoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Todo>(
      rows,
      columns: columns?.call(Todo.t),
      transaction: transaction,
    );
  }

  Future<Todo> updateRow(
    _i1.Session session,
    Todo row, {
    _i1.ColumnSelections<TodoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Todo>(
      row,
      columns: columns?.call(Todo.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Todo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Todo>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Todo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Todo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TodoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Todo>(
      where: where(Todo.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TodoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Todo>(
      where: where?.call(Todo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
