import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

/*
  (  ) 결과를 처리하는 추상 클래스
  freezed 외부 라이브러리를 이용한 봉인 클래스(sealed classes)
 */
@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(Exception e) = Error;
}
