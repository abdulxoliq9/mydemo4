import 'package:flutter/material.dart';
import 'package:mydemo4/Pages/use_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String data='Button';
  Future sendMess() async{
   Map val= await Navigator.of(context).push(new MaterialPageRoute(
        builder:(BuildContext context){
          return new UsePage(inName:'Flutter',inNum:22);
        }
    ));


  if(val != null && val.containsKey('name') && val.containsKey('number')){
    setState(() {
    data= '${val['name']}   ${val['number']}';
    });
  }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:FlatButton(
        onPressed: (){
          sendMess();
        },
        color: Colors.amberAccent,
        child: Text(data),
      )),
    );
  }
}
