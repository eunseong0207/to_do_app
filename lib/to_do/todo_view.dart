import 'package:flutter/material.dart';
import 'package:tasks/to_do/to_do_detail_page.dart';
import 'package:tasks/to_do/to_do_entity.dart';
import 'package:tasks/to_do/to_do_view_item.dart';

class TodoView extends StatefulWidget {
  const TodoView({
    super.key,
    required this.items,
    required this.onDone,
    required this.onFavorite,
  });
  final List<ToDoEntity> items;
  final void Function(int index, bool value) onDone;
  final void Function(int index, bool value) onFavorite;

  @override
  State<TodoView> createState() => TodoViewState();
}

class TodoViewState extends State<TodoView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 200),
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TodoDetailPage(realtodo: []),
                ),
              );
            },
            child: TodoViewitem(
              index: index,
              content: widget.items[index].title,
              isDone: widget.items[index].isDone,
              onDone: (index, value) {
                widget.onDone(index, value);
              },
              isFavorite: widget.items[index].isFavorite,
              onFavorite: (int index, bool value) {
                widget.onFavorite(index, value);
              },
            ),
          );
        },
      ),
    );
  }
}
