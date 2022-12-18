
import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/randomQuoteRepository.dart';

class GetRandomQuote {
   RandomQuoteRepository _randomQuoteRepository;

   GetRandomQuote(this._randomQuoteRepository);

   Future<Either<Failure,QuoteEntity>> call()async{
    return await _randomQuoteRepository.getRandomQuote();
   }

}