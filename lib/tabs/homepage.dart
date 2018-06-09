import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'gallerypage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  
  TabController controller;

  @override
    void initState() {  
      super.initState();
      controller = new TabController(length: 3, vsync: this);
    }

    @override
      void dispose() {
        controller.dispose();
        super.dispose();
        
      }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Cookies & More'),
        elevation: 0.0,
      ),
       body: TabBarView(
        children: <Widget>[
          GalleryPage(),
          Container(),
          Container(),
        ],
        controller: controller,
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: this.controller,
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.black26,
          indicatorColor: Colors.purpleAccent,
          tabs: <Widget>[
            Tab(
              icon: Icon(MdiIcons.cookie),
            ),
            Tab(
              icon: Icon(Icons.adjust),
            ),
            Tab(
              icon: Icon(Icons.cloud),
            ),
           
          
          ],
        ),
      ),
    );
  }
}



