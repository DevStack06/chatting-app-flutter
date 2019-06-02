import 'package:flutter/material.dart';
import 'portion/Callportion.dart';
import 'portion/CameraPortion.dart';
import 'portion/ChatPortion.dart';
import 'portion/StatusPortion.dart';

class WhatsApp extends StatefulWidget
{
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState()
  {
    super.initState();
    _tabController=new TabController(initialIndex: 1,vsync: this,length: 4);

  }



  Widget build(BuildContext context) {

    return Scaffold(
      
    appBar: AppBar(
      elevation: 0.7,
      title: Text("WhatsApp"),
      actions: <Widget>[
       IconButton(
         icon:Icon(Icons.search),
         onPressed: (){},
         ),
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        ),
        IconButton(
          icon:Icon(Icons.more_vert),
          onPressed: (){},
        ),
        Padding(
        padding: EdgeInsets.only(right: 20.0),
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.camera_alt),),
          Tab(text: "CHAT"),
          Tab(text: "STATUS",),
          Tab(text: "CALL",)
        ],
      ),

    ),
    body: TabBarView(
      controller: _tabController,
      children: <Widget>[
        CameraPortion(),
        ChatPortion(),
        StatusPortion(),
        CallPortion(),
      ],
    ),
    );
  }
}