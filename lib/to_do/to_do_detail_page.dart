// 상세 페이지
import 'package:flutter/material.dart';
import 'package:tasks/to_do/to_do_entity.dart';

class TodoDetailPage extends StatelessWidget {
  const TodoDetailPage({super.key, required this.realtodo});

  final List<ToDoEntity> realtodo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("새 할 일"), backgroundColor: Colors.grey[200]),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("realtodo"),
            Icon(Icons.short_text_rounded),
            Text("세부 내용은 다음과 같습니다."),
            Text("세부 내용은 여기에 작성합니다."),
          ],
        ),
      ),
    );
  }

  //
}
