import 'package:flutter/material.dart';


import 'package:workshopark/responsive/responsive.layout.dart';
import 'features/home/ui/desktop/home_desktop_page.dart';
import 'features/home/ui/mobile/home_mobile_page.dart';
void main() {
  runApp(WorkshopARK());
}

    class WorkshopARK extends StatelessWidget{

  @override
      Widget build(BuildContext context){
    return MaterialApp(
      title:'Real Estate App',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayout(mobilePage: HomeMobilePage(),desktopPage:HomeDesktopPage()),
    );
  }
    }