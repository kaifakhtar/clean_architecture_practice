import 'package:clean_architecture_practice/features/getQuote/presentation/providers/RandomQuoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/FeatureTile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
   List<String> listFeatureName=["Quotes","Facts","Health"];
       // final randomQuoteListViewModal =
       // Provider.of<RandomQuoteProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title:Text("KnowledgeBase"),
      ),
     floatingActionButton: FloatingActionButton.extended(onPressed: () {

        showModalBottomSheet(context: context, builder: (context){
          return SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context,index){
              return FeatureTile(listFeatureName[index]);
            }),
          );
        });

      }, label: Text("Explore Features")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


    );

  }
}
