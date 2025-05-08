import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}


// 메모장 앱
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MyMemoAppPage()
      );
  }
}


class MyMemoAppPage extends StatefulWidget {
  const MyMemoAppPage({super.key});

  @override
  State<MyMemoAppPage> createState() => _MyMemoAppPageState();
}

class _MyMemoAppPageState extends State<MyMemoAppPage> {
  List<String> items = ['1','2','3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('메모장'),
          backgroundColor: Colors.lightGreenAccent,
          actions: [
            IconButton(onPressed: (){
              setState(() {
                items.add('new items');
                print(items);
              });
            }, icon: Icon(Icons.create),)
          ],
        ),
        body: ListView.builder(itemCount: items.length, itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            tileColor: Colors.amber,
            trailing: IconButton(onPressed: (){
              setState(() {
                items.removeAt(index);
                print(items);
              });
            }, icon: Icon(Icons.delete)),
          );
        }));
  }
}




// 중고거래 디자인
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
              leadingWidth: 200,
               leading: Center(child:
               Row(
                 children: [
                   Padding(padding: EdgeInsets.fromLTRB(40, 0, 0, 0)),
                   Text("금호동3가", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                   Icon(Icons.expand_more)
                 ],
               )
               ),
               actions: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 35,), padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                 IconButton(onPressed: (){}, icon: Icon(Icons.format_align_justify, size: 35), padding: EdgeInsets.fromLTRB(15, 0, 15, 0)),
                 IconButton(onPressed: (){}, icon: Icon(Icons.add_alert, size: 35), padding: EdgeInsets.fromLTRB(15, 0, 15, 0))
              ],
            ),

        body: Container(
          width: 120,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Account();
            },
          ),
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


// 에렌예거
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.all(34),
      child: Row(
        children: <Widget> [
          //IMG
          Column(
            children: [
              Image(image: AssetImage('img.jpg',), width: 200, height: 200,)
            ],
          ),
          Container(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 200, child:
                Text('에렌 DSLR 100D (진격의거인, 거인 16기가SD포함)',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                ),
                Text('성동구 행당동 끌올 10분전', style: TextStyle(color: Colors.grey),),
                Text('210,000원',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Container(
                  padding: EdgeInsets.fromLTRB(150, 0, 0, 0),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                      Text('4'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//연락처목록
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.account_circle, size: 45,),
        Text('장승권', style: TextStyle(fontSize: 15),)
      ],
    );
  }
}
