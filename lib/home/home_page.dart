import 'package:flutter/material.dart';
import 'package:tasks/to_do/to_do_empty.dart';

class HomePage extends StatelessWidget {
  String name = "은성`s Tasks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      // -----빨간배경 + 버튼 시작 -----
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(100),
        ),
        child: Icon(Icons.add, color: Colors.white),
      ),
      // ----- 빨간배경 + 버튼 시작 -----
      body: ListView(
        children: [
          // Empty(name: name)
        ],
      ),
    );
  }

  //
}
