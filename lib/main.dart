import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          //child: new Text('Hello World'),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

/**
 *  持有的状态可能在widget生命周期中发生变化. 实现一个 stateful widget 至少需要两个类:
 *  一个 StatefulWidget类。
 * 一个 State类。 StatefulWidget类本身是不变的，但是 State类在widget生命周期中始终存在.
 */
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}
