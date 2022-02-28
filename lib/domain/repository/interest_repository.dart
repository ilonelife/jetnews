import 'package:jetnews/domain/model/interest/interest_section.dart';

import '../../data/data_source/result.dart';
import '../model/interest/interest.dart';

abstract class InterestRepository {
  Future<Result<List<InterestSection>>> getTopicInterest(int page);

  Future<Result<List<Interest>>> getPeopleInterest(int page);

  Future<Result<List<Interest>>> getPublicationInterest(int page);

  Future<Result<bool>> checkInterests(int interestId);

  Future<Result<List<int>>> getChecked(int userId);
}
