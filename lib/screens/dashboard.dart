import 'package:bytebank/screens/contacts_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bytebank_logo.png'),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child:Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactsList(),),);
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  height: 120,
                  width: 150,
                  child: Column(
                    children: <Widget> [
                      Icon(Icons.people, color:Colors.white),
                      Text('Contatos', style: TextStyle(color: Colors.white, fontSize: 28.0), )
                    ],
                  ),
                ),
              ),
            )
          ,)
        ],
      ),
    );
  }
}
