
import 'package:clean_architecture_practice/features/getQuote/domain/entities/quote_entity.dart';

class QuoteModal extends QuoteEntity{

  QuoteModal(
      {
  required String? sId,
  required String? content,
  required String? author,
  required List<String>? tags,
  required String? authorSlug,
  required int? length,
  required String? dateAdded,
  required String? dateModified}):super(
      sId: sId,
    content: content,
      author: author,
    tags: tags,
    authorSlug: authorSlug,
    length: length,
    dateAdded: dateAdded,
      dateModified: dateModified);


  factory QuoteModal.fromJson(Map<String, dynamic> json) {
     return QuoteModal(
      sId: json['_id'],
      content: json['content'],
      author: json['author'],
      tags :json['tags'].cast<String>(),
      authorSlug :json['authorSlug'],
      length : json['length'],
      dateAdded : json['dateAdded'],
      dateModified : json['dateModified']
    );
    }
  }


