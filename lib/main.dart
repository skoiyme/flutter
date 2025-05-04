import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
              leadingWidth: 100,
               leading: Center(child:
               Row(
                 children: [
                   Text("금호동3가", style: TextStyle(fontWeight: FontWeight.bold),),
                   Icon(Icons.expand_more)
                 ],
               )
               ),
              actions: [
                Icon(Icons.search),
                Icon(Icons.format_align_justify),
                Icon(Icons.alarm)
              ],
            ),
        
        body: SizedBox(
          child: TextButton(onPressed: (){}, child: Text('안뇽') ),
        ),


bottomNavigationBar: BottomNavigationBar(
  showUnselectedLabels: false,
  showSelectedLabels: false,
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.phone),
      label: '',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        label: '',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.contact_page),
        label: '',
    ),
  ]
),




      ),
    );


  }
}


