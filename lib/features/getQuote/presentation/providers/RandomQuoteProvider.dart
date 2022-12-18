import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/usecases/get_random_quote.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class RandomQuoteProvider with ChangeNotifier{
  final GetRandomQuote _getRandomQuote;
  QuoteEntity? quote;
  RandomQuoteProvider( this._getRandomQuote);


  Future<void> getQuote()async{
     var quoteEntity=await _getRandomQuote.call();
     quote = quoteEntity.foldRight(null, (r, previous) => r);
    //quote=Right(quoteEntity);


     //quote=quoteEntity.fold((l) => null, (r) => r);
    print(quoteEntity.isRight());
     print(quote?.length.toString()) ;
     notifyListeners();
  }
}