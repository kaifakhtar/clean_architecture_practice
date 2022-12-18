
import 'dart:convert';

import 'package:clean_architecture_practice/features/getQuote/data/datasources/remote_data_source.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';
import 'package:http/http.dart' as http;
import '../../../../core/errors/exceptions.dart';
import '../modals/QuoteModal.dart';

class QuoteRemoteDataSourceImp implements QuoteRemoteDataSourceInterface{

  final http.Client client;
  QuoteRemoteDataSourceImp({required this.client});

  @override
  Future<QuoteModal> getRandomQuote()async{
    final response = await client.get(Uri.parse('https://api.quotable.io/random'));

    if (response.statusCode == 200) {
      print(response.contentLength);
      return QuoteModal.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }

}