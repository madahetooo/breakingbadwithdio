import 'dart:convert';

import 'package:flutter/material.dart';

import 'character.dart';
import 'character_api.dart';

class BreakingBadScreen extends StatefulWidget {
  const BreakingBadScreen({Key? key}) : super(key: key);

  @override
  State<BreakingBadScreen> createState() => _BreakingBadScreenState();
}

class _BreakingBadScreenState extends State<BreakingBadScreen> {
  List<Character> characterList = <Character>[];

  void getCharactersfromApi() async {
    CharacterApi.getCharacters().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        characterList = list.map((model) => Character.fromJson(model)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getCharactersfromApi();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Breaking Bad Characters"),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: characterList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(characterList[index].quote),
                  subtitle: Text(characterList[index].author),
                  // leading: CircleAvatar(
                  //   backgroundImage: NetworkImage(characterList[index].img),
                  // ),
                );
              }),
        ));
  }
}
