import 'package:dartz/dartz.dart';
import 'package:ieee_event_app/core/constants/api_const.dart';
import 'package:ieee_event_app/logic/models/home_model.dart';
import 'package:ieee_event_app/logic/source/api_source.dart';

abstract class IHomeService {
  const IHomeService();
  Future<Either<Exception, List<HomeModel>>> fetchHomeData();
}

class HomeService implements IHomeService {
  const HomeService({
    required IApiSource apiSource,
  }) : _apiSource = apiSource;
  final IApiSource _apiSource;

  @override
  Future<Either<Exception, List<HomeModel>>> fetchHomeData() {
    return _apiSource.get(
      path: '$ApiConst/fetch',
      fromMapFunc: (Map<String, dynamic> map) {
        final result = List<Map<String, dynamic>>.from(map['result'] as List);
        return result.map(HomeModel.fromMap).toList();
      },
    );
  }
}
