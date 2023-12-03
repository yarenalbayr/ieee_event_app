import 'package:dartz/dartz.dart';
import 'package:ieee_event_app/core/helpers/logger.dart';

mixin ErrorWrapper {
  Future<Either<Exception, T>> errorWrapper<T>(
    Future<Either<Exception, T>> Function() f,
  ) async {
    try {
      return await f();
    } catch (e) {
      logger.d(e);
      return left(Exception(e.toString()));
    }
  }
}
