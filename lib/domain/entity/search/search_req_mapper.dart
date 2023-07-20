import 'package:restaurant_app/data/model/request/search/search_request.dart';
import 'package:restaurant_app/domain/entity/search/search.dart';

class SearchReqMapper {
  const SearchReqMapper._();

  static SearchRequest mapDomainToRequest(Search request) {
    return SearchRequest(q: request.q);
  }
}
