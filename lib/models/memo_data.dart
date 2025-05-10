class MemoData {
  int? id;
  String content;
  final DateTime createAt;

  MemoData({this.id, required this.content, required this.createAt});

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'content' : content,
      'createAt' : createAt.toIso8601String(),
    };
  }

}

