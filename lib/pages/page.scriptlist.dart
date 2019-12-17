import 'package:flutter/material.dart';

class ScriptsList extends StatelessWidget {
  final List<String> scripts;

  ScriptsList({Key key, @required this.scripts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'FileMaker Scripts';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.deepOrange,
        ),
        body: ListView.builder(
          itemCount: scripts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${scripts[index]}'),
            );
          },
        ),
      ),
    );
  }
}
