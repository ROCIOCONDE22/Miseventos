

import 'package:flutter/material.dart';


class Miseventos2 extends StatefulWidget {
  const Miseventos2({ Key key }) : super(key: key);
  
  @override
  _Miseventos2State createState() => _Miseventos2State();
}

class _Miseventos2State extends State<Miseventos2> with SingleTickerProviderStateMixin 
{
  final List<Tab> myTabs = <Tab>
  [
    Tab(text: 'GRUPOS DE ESTUDIO'),
    Tab(text: 'ASESORÍAS'),
  ];

  TabController _tabController;

  @override
  void initState() 
  {
    super.initState();
    _tabController = TabController
    (vsync: this, 
    length: myTabs.length);
  }

 @override
 void dispose() 
 {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: 

      PreferredSize(
        preferredSize: Size.fromHeight(125.0),
          child: AppBar(
          title: Text("Mis eventos"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios),
          bottom: TabBar
          (
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
      ),
      body: 
      TabBarView
      (
        controller: _tabController,
        children: <Widget>[ gruposestudio(),asesorias()],
      ),
    );
  }

  Widget datosdelevento()
  {
    return Container
      (
       padding: EdgeInsets.all(9),
       );
  }

  Widget creartexto(String texto)
  {
    return Container(
      padding: EdgeInsets.all(9),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20)
        ),
    );
  }


  Widget miseventos()
  {
    return Card(
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              children:<Widget>
              [
                Container(
                  margin: EdgeInsets.only(top:5, left: 30),
                  child: Icon
                (Icons.book)),
                Container(
                  margin:EdgeInsets.only(top:5,left:30),
                  child: 
                Text(
                  'Física 2', 
                  style: TextStyle(
                    fontSize: 15.0
                  ),
                )
              ),
              ]
            ),
          ),
            Container(
            margin: EdgeInsets.symmetric( horizontal: 33),
            child: Row(
              children:<Widget>
              [
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Icon
                (Icons.place)),
                Text(
                  'Biblioteca central', 
                  style: TextStyle(
                    fontSize: 15.0
                  ),
                ),
              ]
            ),
          ),
            Container(
            margin: EdgeInsets.symmetric( horizontal: 30),
            child: Row(
              children:<Widget>
              [
                Container(
                  margin: EdgeInsets.only(right:30,top: 10),
                  child: Icon
                (Icons.calendar_today)),
                Text('12/05/2020', style:TextStyle(fontSize: 15.0)),
              ]
            ),
          ),
                     
                      Container(
            margin: EdgeInsets.symmetric( horizontal: 30),
            child: Row(
              children:<Widget>
              [
                Container(
                  margin: EdgeInsets.only(right:25, top: 10),
                  child: Icon(Icons.access_time)
                ),
                Text('8:00PM', style:TextStyle(fontSize: 15.0),),
              ]
            ),
          ),
        
  ButtonBar(
            children: <Widget>[
              FlatButton(
                child: const Text('Editar evento'),
                onPressed: () { /* ... */ },
              ),
              FlatButton(
                child: const Text('Chat del grupo'),
                onPressed: () { /* ... */ },
              ),
            ],
          ),
        ]
      )
    );
  }

  Widget gruposestudio()
  {
  return Container(
    child: 
    SingleChildScrollView(
      child: Column
    (
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>
        [
          miseventos(),
        ],
     ),
    ),
  );
  }
}
 Widget asesorias()
  {
  return 
Center(child: Text(("Estamos en construcción"), 
        style: TextStyle(fontSize: 15) ,));
  }