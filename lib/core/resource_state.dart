import 'package:dio/dio.dart';

class ResourceState<T> {
  T? data;
  DioException? exception;
  ResourceState({this.data, this.exception});
}

class DataSuccess<T> extends ResourceState<T> {
  DataSuccess(T? data) : super(data: data);
}

class DataFailed<T> extends ResourceState<T> {
  DataFailed(DioException? exception) : super(exception: exception);
}
