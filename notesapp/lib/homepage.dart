import 'package:flutter/material.dart';
import 'package:notesapp/utilities/alert_Dialog.dart';
import 'package:notesapp/utilities/noteslists.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _notesBox = Hive.box('notesbox');
  Notesdatabase db = Notesdatabase();

  @override
  void initState() {

    if(_notesBox.get('task')==null){
      db.createfirsttask();
    }else{
      db.loaddata();
    }
    

    super.initState();
  }

  final _controller = TextEditingController();

  
  
  void chackboxchecker(bool? value, index) {
    setState(() {
      db.noteslist[index][1] = !db.noteslist[index][1];
    });
  }

  void saveNewtask() {
    setState(() {
      db.noteslist.add([_controller.text, false]);
    });
    Navigator.of(context).pop();
  }
  void deletTask(int index){
    setState(() {
      db.noteslist.removeAt(index);
    });
  }

  void makeNewtask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewtask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    const appBarRadius = BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(5), bottomLeft: Radius.circular(5)));
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        shape: appBarRadius,
        backgroundColor: Colors.indigo[400],
        title: const Center(
          child: Text(
            'NOTES APP',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: makeNewtask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.noteslist.length,
        itemBuilder: (context, index) {
          return Noteslist(
              taskName: db.noteslist[index][0],
              taskCompleted: db.noteslist[index][1],
              onChanged: (value) => chackboxchecker(value, index),
              deletFunction: (context)=> deletTask(index),
              );
        },
      ),
    );
  }
}

class Notesdatabase { 

  List noteslist = [];

  final _notesBox = Hive.box('notesbox');

  void createfirsttask(){
    noteslist =[
      ['Ajay Madhas', false]
    ];
  }

  void loaddata (){
    noteslist = _notesBox.get('task');
  }

  void updateDateBase(){

    _notesBox.put('task', noteslist);

  }


}

