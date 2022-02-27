import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jetnews/presentation/home/components/news_drawer.dart';

class NewsHomeScreen extends StatefulWidget {
  const NewsHomeScreen({Key? key}) : super(key: key);

  @override
  _NewsHomeScreenState createState() => _NewsHomeScreenState();
}

class _NewsHomeScreenState extends State<NewsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget body;

    return Scaffold(
      drawer: const NewsDrawer(),
      appBar: AppBar(
        title: const Text('JetNews'),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {},
            icon: const Icon(Icons.list_alt),
          ),
        ),
      ),
      body: Column(),
    );
  }
}
