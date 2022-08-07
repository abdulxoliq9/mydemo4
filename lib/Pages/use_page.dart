import 'package:flutter/material.dart';
class UsePage extends StatefulWidget {

  static final String id="use_page";
  final String? inName;
  final int? inNum;
  UsePage({required this.inName, this.inNum});

  @override
  State<UsePage> createState() => _UsePageState();
}

class _UsePageState extends State<UsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
         onPressed: (){
          Navigator.of(context).pop({'name':'Dart','number':33});
          },
          color: Colors.lime,
         child: Text("${widget.inName!}   ${widget.inNum}"),
        ),
      ),
    );
  }
}
