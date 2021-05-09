import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan[600],
      ),
      home: Myapp(),
    ));

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List todos = List();

  @override
  void initState() {
    super.initState();
    todos.add("Item 1");
    todos.add("Item 2");
    todos.add("Item 3");
    todos.add("Item 4");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To be Done"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: 
          (BuildContext context){
            return AlertDialog(
              
            )
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todos[index]),
                child: Card(
                  child: ListTile(
                    title: Text(todos[index]),
                  ),
                ));
          }),
    );
  }
}
