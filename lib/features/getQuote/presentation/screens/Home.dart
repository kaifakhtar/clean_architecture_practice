import 'package:clean_architecture_practice/features/getQuote/presentation/providers/RandomQuoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    final randomQuoteListViewModal =
    Provider.of<RandomQuoteProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title:Text("Clean Architechture"),
      ),
      body: Column(children: [
      Text(randomQuoteListViewModal.quote?.content??"no data"),
        ElevatedButton(onPressed:()=>

        randomQuoteListViewModal.getQuote(), child: Text("Press"))
      ],)
    );
  }
}
