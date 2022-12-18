import 'package:clean_architecture_practice/features/getQuote/data/modals/QuoteModal.dart';

import '../../domain/entities/quote_entity.dart';

abstract class QuoteRemoteDataSourceInterface{
  Future<QuoteModal> getRandomQuote();
}