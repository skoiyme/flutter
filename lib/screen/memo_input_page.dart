import 'package:flutter/material.dart';


class MemoInputPage extends StatefulWidget {
  const MemoInputPage({super.key});

  @override
  State<MemoInputPage> createState() => _MemoInputPageState();
}

class _MemoInputPageState extends State<MemoInputPage> {
  late TextEditingController textContoller;

  // init : 함수가 시작될때 실행됨(초기화 해주기 위해서)
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textContoller = TextEditingController();
  }

// dispose : 작업을 하고 끝난 뒤 빌렸던 공간을 반납해야되는데, 작업 끝나고 반납을 안하면 쓰레기 값이 쌓이는걸 방지
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AddMemo'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: textContoller,
              decoration: InputDecoration(hintText: 'Enter memo'),
              maxLines: 25,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, textContoller.text);
            },
              child: Text('Submit'))
          ],
        ),
      )
    );
  }
}

