

import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';
import 'package:dartz/dartz.dart';

abstract class RandomQuoteRepository{
  Future<Either<Failure,QuoteEntity>> getRandomQuote();

}