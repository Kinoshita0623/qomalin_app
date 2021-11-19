import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AnswerEditorPage extends ConsumerStatefulWidget{
  const AnswerEditorPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return AnswerEditorState();
  }
}

class AnswerEditorState extends ConsumerState{
  final _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('回答作成'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: 5,
            maxLength: 1000,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "回答入力",
              hintText: "必須",
              errorText: null,
            ),
            controller: _textEditingController,
          ),
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
            onPressed: () async {
              //TODO: 現在のユーザが未承認だった場合認証画面へ遷移するようにする。
              final uid = FirebaseAuth.instance.currentUser!.uid;
              final text = _textEditingController.text;
            },
            child: const Text("保存"),
        ),
      ],
    );
  }
}