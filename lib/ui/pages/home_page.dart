import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  void onQuestionPressed(){

  }
  void onUserPressed(){

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: ListView(
      padding: EdgeInsets.all(16),
      children: [QuestionCard(title: 'aaa',text: 'bbb',avataricon: 'ccc',username: 'ddd',onQuestionPressed: onQuestionPressed,onUserPressed: onUserPressed,)],
    ));
  }
}

class QuestionCard extends StatelessWidget {
  @override

  final String title;
  final String text;
  final String? avataricon;
  final String username;
  final VoidCallback onQuestionPressed;
  final VoidCallback onUserPressed;
  QuestionCard({
    Key?key,required this.title,
    required this.text,
    required this.avataricon,
    required this.username,
    required this.onQuestionPressed,
    required this.onUserPressed
  }):super(key:key);

  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'タイトル',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text("説明"),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1633113211821-6ac9c3d160a7?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80',
                  ),
                  radius: 12,
                ),
                SizedBox(width: 8,),
                Text('ユーザーネーム')
              ],
            )
          ],
        ),
      )
    );
  }
}
