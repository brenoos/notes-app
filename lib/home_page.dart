import 'package:flutter/material.dart';
import 'package:notes/create_note_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>["Primeiro Item"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < notes.length; i++)
              Card(
                child: ListTile(
                  title: Text(notes[i]),
                  onTap: () async {
                    final description = await Navigator.pushNamed(
                      context,
                      "/create-note",
                      arguments: notes[i],
                    );
                    if (description != null)
                      setState(() {
                        notes[i] = description as String;
                      });
                  },
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final description = await Navigator.pushNamed(
            context,
            "/create-note",
          );
          if (description != null)
            setState(() {
              notes.add(description as String);
            });
        },
      ),
    );
  }
}
