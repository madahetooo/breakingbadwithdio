class Character {
  // int id;
  // String name;
  // String img;
  // String nickname;
  String quote;
  String author;

  Character.fromJson(Map json)
      : quote = json['quote'],
        author = json['author'];
        // id = json['id'],
        // name = json['name'],
        // img = json['img'],
        //
        // nickname = json['nickname'];

  Map toJson() {
    // return {'id': id, 'name': name, 'img': img, 'nickname': nickname};
    return {'quote': quote, 'author': author};
  }
}