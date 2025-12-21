import 'package:flutter/material.dart';
import 'package:lesson_14/data/todo_model.dart';

class ListScreen extends StatefulWidget {
  const ListScreen ({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  late  final List<TodoModel> _todoList; 

@override
void initState() {
  super.initState();
  _todoList = List.generate(300, (int index){
    return TodoModel(
      title: "Задача №${index + 1}", 
    description: "Сделай это и сделай то",
    );
  });
}


  @override 
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-do screem"),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(child: ListView.separated( 
        physics:ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemBuilder: (context, index ) {
          final item = _todoList[index];

          return Card(color: Colors.cyanAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 5.0,
              children:  [
                Text(item.title, style: TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold
                ), 
                ),
                const SizedBox(height: 5.0,),
                Text(item.description, style: TextStyle (fontSize: 20.0, fontWeight: FontWeight.bold
                ), 
                )
              ],
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(item.title),
                  duration: Duration(microseconds: 500),
                  ),
                  );
              },
              icon: Icon(Icons.arrow_right_alt_outlined,
              ),
              ),
              ],
            )
          ),
          );
        }, 
        separatorBuilder: (context, index ) => const SizedBox(height: 7.0,
        ),  
        itemCount: _todoList.length,
        )
        ),
    );
  }
}

