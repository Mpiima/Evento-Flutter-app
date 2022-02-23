import 'package:evento/model/event.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class EventEditingPage extends StatefulWidget {
  final Event? event;

  const EventEditingPage(
      {Key? key, this.event}) : super(key: key);

  @override
  _EventEditingPageState createState() => _EventEditingPageState();
}

class _EventEditingPageState extends State<EventEditingPage> {

  late DateTime fromDate;
  late DateTime toDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if(widget.event == null){
      fromDate = DateTime.now();
      toDate = DateTime.now().add(Duration(hours: 2));
    }

  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: CloseButton(),
      actions: buildEditingActions(),
    ),
  );
  List<Widget> buildEditingActions() => [
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
        onPressed: () {},
        icon: Icon(Icons.done),
      label:Text('SAVE'),
    )
  ];
}
