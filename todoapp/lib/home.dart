import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  final List<TaskList> _tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('TODO APP',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              decoration: BoxDecoration(color: Colors.purple),
              padding: EdgeInsets.only(top: 21, left: 15),
            ),
            ListTile(
              title: Text('About Us', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Tasks Home"),
        actions: [
          IconButton(
              icon: Icon(Icons.supervised_user_circle),
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(
                            "my name is tom kumar cruise. nice to meet you"),
                      );
                    });
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('ADD YOUR TASK'),
                  content: Column(
                    children: <Widget>[
                      Text('hello how are you'),
                      TextField(
                        controller: _textController,
                        // onSubmitted: _handleSubmitted,
                      ),
                      TextButton(
                          onPressed: () {
                            _handleSubmitted(_textController.text);
                            Navigator.of(context).pop();
                          },
                          child: Text('add task'))
                    ],
                  ),
                );
              });
        },
      ),
      body: Container(
        color: Colors.purple[100],
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemBuilder: (_, int index) => _tasks[index],
          itemCount: _tasks.length,
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    TaskList task = TaskList(
      text: text,
    );
    setState(() {
      _tasks.insert(0, task);
    });
  }
}

class TaskList extends StatelessWidget {
  final String text;
  TaskList({this.text});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0),
        child: Text(text),
      ),
      trailing: IconButton(
        icon: Icon(Icons.done),
        onPressed: null,
      ),
    );
  }
}
