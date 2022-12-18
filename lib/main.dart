import 'package:clean_architecture_practice/core/network/network_info.dart';
import 'package:clean_architecture_practice/features/getQuote/data/datasources/remote_data_source.dart';
import 'package:clean_architecture_practice/features/getQuote/data/datasources/remote_data_source_impl.dart';
import 'package:clean_architecture_practice/features/getQuote/data/repositories/random_quote_repository_impl.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/repositories/randomQuoteRepository.dart';
import 'package:clean_architecture_practice/features/getQuote/presentation/providers/RandomQuoteProvider.dart';
import 'package:clean_architecture_practice/features/getQuote/presentation/screens/Home.dart';
//import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
import 'features/getQuote/domain/usecases/get_random_quote.dart';
void main() {
  runApp(
       MultiProvider(
         providers: [
           ChangeNotifierProvider<RandomQuoteProvider>(create: (_) => RandomQuoteProvider( GetRandomQuote(RandomQuoteRepositoryImpl(quoteRemoteDataSourceInterface: QuoteRemoteDataSourceImp(client: http.Client()), networkInfo: NetworkInfoImpl())))),
         ],
         child: MaterialApp(
            home: Home()),
       ));
}
