

import 'package:clean_architecture_practice/core/errors/exceptions.dart';
import 'package:clean_architecture_practice/core/errors/failure.dart';

import 'package:clean_architecture_practice/features/getQuote/data/datasources/remote_data_source.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';
import 'package:clean_architecture_practice/features/getQuote/domain/repositories/randomQuoteRepository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/network/network_info.dart';

class RandomQuoteRepositoryImpl implements RandomQuoteRepository{
  final QuoteRemoteDataSourceInterface quoteRemoteDataSourceInterface;
  final NetworkInfo networkInfo;


  RandomQuoteRepositoryImpl({
    required this.quoteRemoteDataSourceInterface,
      required this.networkInfo
  });

  @override
  Future<Either<Failure, QuoteEntity>> getRandomQuote() async{
    if(networkInfo.isConnected){
      try{
         final quoteEntity=await quoteRemoteDataSourceInterface.getRandomQuote();
        print(Right(quoteEntity).value.content);
         return Right(quoteEntity);
      }on ServerException{
        return Left(ServerFailure());
      }
    }
    else{
        return Left(ServerFailure());
    }

  }

}